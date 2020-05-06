# frozen_string_literal: true

class Email < ApplicationRecord
  belongs_to :entity, inverse_of: :emails

  rails_admin do
    visible false
  end
end
