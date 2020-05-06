# frozen_string_literal: true

class Sale < ApplicationRecord
  belongs_to :payment_method, inverse_of: :sales
  belongs_to :entity, inverse_of: :sales
  belongs_to :address, inverse_of: :sales
  has_many :sale_details, inverse_of: :sale

  rails_admin do
    label 'Facturas'
    navigation_label 'Caja'
  end
end
