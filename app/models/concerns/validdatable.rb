module Validatable
  extend ActiveSupport::Concern
  included do
    validates :name, :lastname, :email, presence: true
  end
end