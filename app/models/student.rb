class Student < ApplicationRecord
  has_many :blogs
  validates :name, :lastname, :email, presence: true
  # before_create :display_greetings
  # def display_greetings
  #puts 'Hello , you executed before action  callback'
  # end

  #many_to_many avec courses
  has_and_belongs_to_many :courses
  #has_and_belongs_to_many :courses ,join_table: "students_courses"
end
