# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 添加一个管理员账户
if User.find_by(email:"admin@test.com").nil?
	u = User.new
	u.email = "admin@test.com"
	u.password = "admina"
	u.password_confirmation = "admina"
	u.is_admin = true
	u.save
	puts "Admin 已经建立好了，账号为#{u.email},密码为#{u.password}"
else
	puts "Admin 已经建立过了，脚本跳过该步骤"
end

#产品列表导入初始化
Product.create!(
	title: "mix-tea",
	price: 37,
	quantity: 10,
	image: open("http://oqibh4tbw.bkt.clouddn.com/mix-tea.jpg")
	)

Product.create!(
	title: "花瓣卡布奇诺",
	price: 25,
	quantity: 10,
	image: open("http://oqibh4tbw.bkt.clouddn.com/%E8%8A%B1%E7%93%A3%E5%8D%A1%E5%B8%83%E5%A5%87%E8%AF%BA.jpg")
	)

Product.create!(
	title: "苹果绿茶",
	price: 28,
	quantity: 10,
	image: open("http://oqibh4tbw.bkt.clouddn.com/apple-tea.jpg")
	)

Product.create!(
	title: "柠檬汁",
	price: 39,
	quantity: 1,
	image: open("http://oqibh4tbw.bkt.clouddn.com/%E6%9F%A0%E6%AA%AC%E6%B1%81.jpg")
	)

Product.create!(
	title: "暖心卡布奇诺",
	price: 49,
	quantity: 170,
	image: open("http://oqibh4tbw.bkt.clouddn.com/%E6%9A%96%E5%BF%83%E5%92%96%E5%95%A1.jpg")
	)
