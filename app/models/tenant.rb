class Tenant < ApplicationRecord
    has_many :reviews
    has_many :landlords, :through => :reviews
end
