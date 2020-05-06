# frozen_string_literal: true

class SaleDetail < ApplicationRecord
  belongs_to :sale, inverse_of: :sell_details
  belongs_to :product, inverse_of: :sell_details
  belongs_to :product_price, inverse_of: :sell_details

  rails_admin do
    visible false
  end
end
