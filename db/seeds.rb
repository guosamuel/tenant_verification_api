# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for x in 1..6
    Landlord.create(first_name: "Sam#{x}", last_name: "Guo#{x}", email: "derp#{x}@gmail.com", password: '123#{x}')
    Tenant.find_or_create_by(first_name: "Nancy#{x}", last_name: "Lin#{x}")
    Review.find_or_create_by(start_date: Date.new(2020, x+1, x+1), end_date: Date.new(2020, x+1, x+2), landlord_id: x, tenant_id: x+4, address: "123#{x} Fake St", comment: "Testing#{x} right now")
end

# Landlord.find_or_create_by(first_name: "Sam", last_name: "Guo", email: "derp@gmail.com", password: '123')
# Review.new(start_date: Date.new(2020, 2, 2), end_date: Date.new(2020, 2, 3), landlord_id: 1, tenant_id: 5, address: "1232 Fake St", comment: "Testing1 right now")
Landlord.create(first_name: "Sam1", last_name: "Guo1", email: "derp1@gmail.com", password_digest: '123#{x}')
# Tenant.find_or_create_by(first_name: "Nancy1", last_name: "Lin1")
# Review.find_or_create_by(start_date: Date.new(2020, 2, 2), end_date: Date.new(2020, 2, 3), landlord_id: 1, tenant_id: 5, address: "1231 Fake St", comment: "Testing1 right now")
