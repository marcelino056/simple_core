# frozen_string_literal: true

class Currency < ApplicationRecord
  has_many :product_prices, inverse_of: :currency

  rails_admin do
    label 'Monedas'
    navigation_label 'Parametros'
    configure :product_prices do
      visible false
    end
    field :name, :string
    field :simbol, :string
    field :state, :state
    state({
            events: { disable: 'btn-danger', enable: 'btn-success' },
            states: { disabled: 'label-important', enabled: 'label-success' },
            disable: [:disabled]
          })
  end
end
