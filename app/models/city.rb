# frozen_string_literal: true

class City < ApplicationRecord
  belongs_to :province

  rails_admin do
    label 'Ciudades'
    navigation_label 'Ubicaciones'
  end
end
