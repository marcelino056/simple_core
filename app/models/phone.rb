# frozen_string_literal: true

class Phone < ApplicationRecord
  belongs_to :entity, inverse_of: :phones

  rails_admin do
    visible false
  end
end
