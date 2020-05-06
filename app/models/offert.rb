class Offert < ApplicationRecord
  has_many :offert_products, inverse_of: :offert

  rails_admin do
    label 'Ofertas'
    parent Product
  end
end
