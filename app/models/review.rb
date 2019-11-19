class Review < ApplicationRecord
  belongs_to :landlord
  belongs_to :tenant

end
