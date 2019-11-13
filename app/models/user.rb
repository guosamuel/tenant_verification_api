class User < ApplicationRecord
    has_many :reviews
    has_many :addresses
    has_many :tenants, through: :reviews
end
