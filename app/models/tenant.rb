class Tenant < ApplicationRecord
    has_many :reviews
    has_many :landlords, :through => :reviews
    validates :first_name, :last_name, presence: true
end
