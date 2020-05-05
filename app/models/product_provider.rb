# frozen_string_literal: true

class ProductProvider < ApplicationRecord
  belongs_to :provider, inverse_of: :product_providers
  belongs_to :product, inverse_of: :product_providers

  rails_admin do
    visible false
  end
end
