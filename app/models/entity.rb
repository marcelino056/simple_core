# frozen_string_literal: true

class Entity < ApplicationRecord
  has_many :phones, inverse_of: :entity
  has_many :emails, inverse_of: :entity
  has_many :identifications, inverse_of: :entity
  has_many :addresses, inverse_of: :entity
  has_many :sales, inverse_of: :entity

  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :emails, allow_destroy: true
  accepts_nested_attributes_for :identifications, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  rails_admin do
    visible false
  end
end
