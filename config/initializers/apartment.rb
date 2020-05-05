# frozen_string_literal: true

require 'apartment/elevators/subdomain'

Apartment.configure do |config|
  config.excluded_models = %w[Account Admin Plan Coupon Subscription]
  config.tenant_names = -> { Account.pluck(:name) }
end

Rails.application.config.middleware.use Apartment::Elevators::Subdomain
Apartment::Elevators::Subdomain.excluded_subdomains = ['www']
