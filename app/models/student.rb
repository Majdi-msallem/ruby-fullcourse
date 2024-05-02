class Student < ApplicationRecord
  validates :name, :lastname, :email, presence: true
end
