# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category, class_name: 'ProductCategory', inverse_of: :products
  has_many :prices, class_name: 'ProductPrice', inverse_of: :product
  has_many :costs, class_name: 'ProductCost', inverse_of: :product
  has_many :product_providers, inverse_of: :product
  has_many :providers, through: :product_providers
  has_many :transactions, class_name: 'ProductTransaction', inverse_of: :product
  has_many :offert_products, inverse_of: :product
  has_many :purchase_detail, inverse_of: :product
  has_many :sell_detail, inverse_of: :product
  has_one_attached :images

  accepts_nested_attributes_for :prices, reject_if: ->(attributes) { attributes['amount'].blank? || attributes['currency_id'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :providers, allow_destroy: true

  validates :prices, presence: true
  validates :category, presence: true

  rails_admin do
    label 'Productos'
    navigation_label 'Inventario'
    navigation_icon 'briefcase'
    configure :product_providers do
      visible false
    end
    # field :allow_with_out_stock, :toggle
  end
end
