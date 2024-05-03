class Manager < ApplicationRecord
  belongs_to :departement
  has_one :manager_history
end
