# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
User.create!(email: 'admin@test.com', password: '123456', admin: true)

PlugType.destroy_all
PlugType.find_or_create_by(name: 'Type 2', is_dc: false)
PlugType.find_or_create_by(name: 'CHAdeMO', is_dc: true)
PlugType.find_or_create_by(name: 'CCS', is_dc: true)

Location.destroy_all
Location.create!(title: 'Hemus', latitude: 42.7301998, longitude: 23.5967622)
Location.create!(title: 'Volvo', latitude: 42.701766, longitude: 23.4507755)
Location.create!(title: 'Billa', latitude: 42.6552866, longitude: 23.3160096)
