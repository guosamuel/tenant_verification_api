class Address < ApplicationRecord
    belongs_to :landlord   

    validates :street1, :city, :state, :postal, presence: true
    validates :postal, length: { in: 5..9}, numericality: {only_integer: true}

end
