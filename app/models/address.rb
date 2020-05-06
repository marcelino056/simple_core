# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :sector
  belongs_to :entity, inverse_of: :addresses
  has_many :sales, inverse_of: :address

  rails_admin do
    visible false
  end
end
