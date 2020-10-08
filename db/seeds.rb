# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Nathan", last_name: "Chung", username:123, password:"123", password_confirmation:"123", imageUrl:"https://media.giphy.com/media/l4Jz3a8jO92crUlWM/giphy.gif")

Post.create(title:"5 stocks I like", content:"I really like a, b, c, d, and e")
Post.create(title:"5 stocks I don't like", content:"I really don't like a, b, c, d, and e")

Category.create(name:"Finance")
Category.create(name:"Technology")
Category.create(name:"Healthcare")

Stock.create(name:"Microsoft", symbol:"MSFT")
Stock.create(name:"Apple", symbol:"AAPL")

List.create(title:"Tech", user_id: 1, portfolio: true)
List.create(title:"REITs", user_id:2)

#### Join Tables####

ListStock.create(list_id: 1, stock_id:1)
UserPost.create(user_id:1, post_id:1)
PostCategory.create(post_id:1, category_id:1)
PostStock.create(stock_id:1, post_id:1)

puts "seeded"