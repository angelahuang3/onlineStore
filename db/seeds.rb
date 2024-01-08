# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
product = Product.create([{name: 'Apple Watch', description: 'best product for health', image: 'applewatch.jpeg', price: 100.55},
    {name: 'Macbook Air', description: 'an apple laptop', image: 'macbook.jpeg', price: 250.55},
    {name: 'Ipad Air', description: 'a useful tool', image: 'ipad.jpeg', price: 100.55},
    {name: 'Iphone 13', description: 'must have product', image: 'iPhone.jpeg', price: 200.55}])
  User.delete_all
  #user = User.create(name: 'admin', password_digest: 'admin')
  user = User.create(name: 'admin', password_digest: 'admin')
  user.password = 'admin'
  user.password_confirmation = 'admin'
  user.save!

