# frozen_string_literal: true

class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w[www admin]
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :projects
  end

  mount RailsAdmin::Engine => '/account', as: 'rails_admin'
  mount Koudoku::Engine, at: 'koudoku'
  scope module: 'koudoku' do
    get 'pricing' => 'subscriptions#index', as: 'pricing'
  end

  devise_for :accounts
  devise_for :users
  devise_for :admins
end
