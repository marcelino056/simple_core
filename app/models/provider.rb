# frozen_string_literal: true

class Provider < Entity
  has_many :product_providers, inverse_of: :provider
  has_many :products, through: :product_providers
  has_many :purchases, inverse_of: :provider

  rails_admin do
    parent Product
    label 'Proveedores'
    configure :product_providers do
      visible false
    end
    configure :products do
      visible false
    end
  end
end
