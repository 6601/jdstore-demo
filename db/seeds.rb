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
	title: "Ruby on Rails实践之路：写给PHP和Java开发者的书",
	price: 37.9,
	quantity: 10,
	image: open("https://img14.360buyimg.com/n12/16103/e89aa9c4-3835-4c73-8ae0-8b1ae4c8f412.jpg")
	)

Product.create!(
	title: "Ruby on Rails视频教程",
	price: 66,
	quantity: 10,
	image: open("https://gd1.alicdn.com/imgextra/i3/2979856611/TB2k8kjebWJ.eBjSspdXXXiXFXa_!!2979856611.jpg")
	)

Product.create!(
	title: "R蓝色衬衫女短袖夏季2017新款韩版套头",
	price: 109,
	quantity: 10,
	image: open("https://img.alicdn.com/bao/uploaded/i1/TB1yOk1RXXXXXbdXFXXXXXXXXXX_!!0-item_pic.jpg")
	)

Product.create!(
	title: "今天拍的一个照片",
	price: 100,
	quantity: 1,
	image: open("http://wx3.sinaimg.cn/mw690/ac5c7d92ly1fft9ez1s19j20qo0zkag6.jpg")
	)

Product.create!(
	title: "每周保持5小时以上的运动时间",
	price: 1239,
	quantity: 170,
	image: open("http://wx1.sinaimg.cn/mw690/ac5c7d92ly1fft9f39sb3j20qo0zkk07.jpg")
	)