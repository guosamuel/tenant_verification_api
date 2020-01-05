# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Landlord.find_or_create_by(first_name: "Sam", last_name: "Guo", email: "derp@gmail.com", password_digest: '123')
Tenant.find_or_create_by(first_name: "Nancy", last_name: "Lin")
Review.find_or_create_by(start_date: Date.new(2020, 1, 1), end_date: Date.new(2020, 1, 2), landlord_id: 2, tenant_id: 4, address: "123 Fake St", comment: "Testing right now")
