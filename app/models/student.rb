class Student < ApplicationRecord
  has_many :blogs
  validates :name, :lastname, :email, presence: true
  # before_create :display_greetings
  # def display_greetings
  #puts 'Hello , you executed before action  callback'
  # end
end
