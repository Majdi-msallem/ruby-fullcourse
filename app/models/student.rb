class Student < ApplicationRecord
  has_many :blogs
  validates :name, :lastname, :email, presence: true
  validates :email, uniqueness: true
  validates :name, :lastname, length: { minimum: 3, maximum: 50 }
  validates :name, :lastname, format: { with: /\A[a-z,A-Z]+\z/,message: 'Only lettre are allowed' }
  validates :age, presence: true ,numericality: { only_integer: true }

  validate :validate_student_age
  def validate_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      if age<15
        errors.add(:date_of_birth, "Must be greater than 15 years old.")
      end
    end
  end


  def full_name
    "#{name} #{lastname}"
  end

  def age
    if date_of_birth.present?
      Date.today.year - date_of_birth.year
    else
      nil
    end
  end

  # before_create :display_greetings
  # def display_greetings
  #puts 'Hello , you executed before action  callback'
  # end

  #many_to_many avec courses
  has_and_belongs_to_many :courses
  #has_and_belongs_to_many :courses ,join_table: "students_courses"

  #has_many  avec project
  has_many :student_projects
  has_many :projects, through: :student_projects
end
