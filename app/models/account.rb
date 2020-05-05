# frozen_string_literal: true

class Account < ApplicationRecord
  has_one :subscription
  has_many :users

  after_create :create_tenant
  after_create :create_first_user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  validates_uniqueness_of :name, message: 'must be unique'

  private

  def create_tenant
    Apartment::Tenant.create(name)
    Apartment::Tenant.switch(name)
  end

  def create_first_user
    User.create(email: email, password: password, password_confirmation: password)
  end
end
