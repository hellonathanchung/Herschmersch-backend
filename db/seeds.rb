# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserPost.destroy_all
ListStock.destroy_all
PostCategory.destroy_all
PostStock.destroy_all
User.destroy_all
Post.destroy_all
Category.destroy_all
Stock.destroy_all
List.destroy_all


User.create(first_name: "Nathan", last_name: "Chung", username:123, password:"123", password_confirmation:"123", imageUrl:"https://media.giphy.com/media/l4Jz3a8jO92crUlWM/giphy.gif")

Post.create(title:"5 stocks I like", content:"I really like a, b, c, d, and e")
Post.create(title:"5 stocks I don't like", content:"I really don't like a, b, c, d, and e")

Category.create(name:"Finance")
Category.create(name:"Technology")
Category.create(name:"Healthcare")

Stock.create(name:"Microsoft", symbol:"MSFT")
Stock.create(name:"Apple", symbol:"AAPL")

List.create!(title:"Tech", user_id: User.all.sample.id, portfolio: true)
List.create(title:"REITs", user_id: User.all.sample.id)

#### Join Tables####

ListStock.create(list_id: List.all.sample.id, stock_id:Stock.all.sample.id)
UserPost.create(user_id: User.all.sample.id, post_id:Post.all.sample.id)
PostCategory.create(post_id: Post.all.sample.id, category_id:Category.all.sample.id)
PostStock.create(stock_id: Stock.all.sample.id, post_id:Post.all.sample.id)

puts "seeded"