class Province < ApplicationRecord
  belongs_to :country
  rails_admin do
    label 'Provincias'
    navigation_label 'Ubicaciones'
  end
end
