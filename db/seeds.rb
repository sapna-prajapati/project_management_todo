# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user = User.new
# user.email = 'manager@examples.com'
# user.role = 'manager'
# user.password = 'password'
# user.password_confirmation = 'password'
# user.save
User.skip_callback(:create, :before, :set_role)

User.create(email: 'manager@examples.com', role: 'manager', password: 'password', password_confirmation: 'password')

User.set_callback(:create, :before, :set_role)