class Review < ApplicationRecord
  belongs_to :landlord
  belongs_to :tenant

  validates :landlord, :tenant, :start_date, :address, :comment, presence: true
  validates :comment, length: { minimum: 2 }

end
