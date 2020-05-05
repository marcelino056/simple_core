class Phone < ApplicationRecord
  belongs_to :entity, inverse_of: :phones
end
