class Tenant < ApplicationRecord
    has_many :reviews
    has_many :landlords, :through => :reviews
    validates :first_name, presence: true
    validates :last_name, presence: true
end
