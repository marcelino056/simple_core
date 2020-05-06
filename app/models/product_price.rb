# frozen_string_literal: true

class ProductPrice < ApplicationRecord
  belongs_to :product, inverse_of: :prices
  belongs_to :currency, inverse_of: :product_prices
  has_many :transactions, class_name: 'ProductTransaction', inverse_of: :product_prices
  has_many :sell_details, inverse_of: :product_price

  rails_admin do
    visible false
  end
end
