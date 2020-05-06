# frozen_string_literal: true

class Country < ApplicationRecord
  rails_admin do
    label 'Paises'
    navigation_label 'Ubicaciones'
  end
end
