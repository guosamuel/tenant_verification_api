class Landlord < ApplicationRecord
  has_secure_password
    has_many :reviews
    has_many :addresses
    has_many :tenants, through: :reviews
    validates :first_name, :last_name, :email, :password, presence: true
    validates :email, uniqueness: true, on: :create
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
