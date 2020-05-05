# frozen_string_literal: true

class ProductCategory < ApplicationRecord
  has_many :products, inverse_of: :categories
  has_one_attached :logo
  has_rich_text :meta

  rails_admin do
    parent Product
    label 'Categorias'
    field :name, :string
    field :logo, :active_storage
    field :meta, :action_text
    configure :products do
      visible false
    end
  end
end
