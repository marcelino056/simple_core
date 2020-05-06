# frozen_string_literal: true

class ProductTransaction < ApplicationRecord
  belongs_to :product, inverse_of: :transactions
  belongs_to :product_price, inverse_of: :transactions
  belongs_to :product_cost, inverse_of: :transactions

  rails_admin do
    label 'Transacciones'
    parent Product
  end
end
