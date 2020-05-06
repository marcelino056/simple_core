# frozen_string_literal: true

class PurchaseDetail < ApplicationRecord
  belongs_to :purchase, inverse_of: :product_details
  belongs_to :product, inverse_of: :product_details

  rails_admin do
    visible false
  end
end
