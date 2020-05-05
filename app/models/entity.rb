class Entity < ApplicationRecord
  has_many :phones, inverse_of: :entity
  has_many :emails, inverse_of: :entity

  rails_admin do
    visible false
  end
end
