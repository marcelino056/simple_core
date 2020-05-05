class Subscription < ActiveRecord::Base


  belongs_to :account
  belongs_to :coupon, optional: true

end
