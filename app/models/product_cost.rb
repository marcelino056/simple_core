# frozen_string_literal: true

class ProductCost < ApplicationRecord
  belongs_to :product, inverse_of: :costs
  belongs_to :currency, inverse_of: :product_costs
  has_many :transactions, class_name: 'ProductTransaction', inverse_of: :product_costs

  rails_admin do
    visible false
  end
end
