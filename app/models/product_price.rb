# frozen_string_literal: true

class ProductPrice < ApplicationRecord
  belongs_to :product, inverse_of: :prices
  belongs_to :currency, inverse_of: :product_prices

  rails_admin do
    visible false
  end
end
