# frozen_string_literal: true

class PaymentMethod < ApplicationRecord
  has_many :purchases, inverse_of: :payment_method
  has_many :sales, inverse_of: :payment_method

  rails_admin do
    label 'Metodos de pago'
    navigation_label 'Finanzas'
  end
end
