# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 添加一个管理员账户
u = User.new
u.email = "admin@test.com"
u.password = "admina"
u.password_confirmation = "admina"
u.is_admin = true
u.save

