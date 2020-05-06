# frozen_string_literal: true

class Currency < ApplicationRecord
  has_many :product_prices, inverse_of: :currency
  has_many :product_costs, inverse_of: :currency

  rails_admin do
    label 'Monedas'
    navigation_label 'Finanzas'
    configure :product_prices do
      visible false
    end
    configure :product_costs do
      visible false
    end
    field :name, :string
    field :simbol, :string
  end
end
