# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :payment_method, inverse_of: :purchases
  belongs_to :provider, class_name: 'Provider', inverse_of: :purchases
  has_many :product_details, inverse_of: :purchase

  rails_admin do
    label 'Compras'
    navigation_label 'Inventario'
  end
end
