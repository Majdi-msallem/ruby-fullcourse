class Course < ApplicationRecord
  validates :name, :description, presence: :true

  #many_to_many avec student
  has_and_belongs_to_many :students

end
