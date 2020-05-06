# frozen_string_literal: true

class Identification < ApplicationRecord
  belongs_to :entity
  rails_admin do
    visible false
  end
end
