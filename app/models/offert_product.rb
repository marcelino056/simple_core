# frozen_string_literal: true

class OffertProduct < ApplicationRecord
  belongs_to :offert, inverse_of: :offert_products
  belongs_to :product, inverse_of: :offert_products

  rails_admin do
    visible false
  end
end
