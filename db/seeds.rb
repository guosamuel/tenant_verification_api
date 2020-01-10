# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for x in 1..6
    Landlord.find_or_create_by(first_name: "Sam#{x}", last_name: "Guo#{x}", email: "derp#{x}@gmail.com", password: '123#{x}')
    Tenant.find_or_create_by(first_name: "Nancy#{x}", last_name: "Lin#{x}")
    Review.find_or_create_by(start_date: Date.today, end_date: Date.today, landlord_id: x, tenant_id: x+4, address: "123#{x} Fake St", comment: "Testing#{x} right now")
end
