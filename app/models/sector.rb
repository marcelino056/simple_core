class Sector < ApplicationRecord
  belongs_to :city
  rails_admin do
    label 'Sectores'
    navigation_label 'Ubicaciones'
  end
end
