# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

puts 'Creating 5 fake users'
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "#{Faker::Name.first_name}@gmail.com",
    password: "password"
  )
  user.save!
end

puts 'Finished with the users!'
puts "creating 25 fake pigs"



pig = Pig.new(
name: "Luis",
user: User.last,
profession: "Tax Auditor",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Luis likes to dance like no is watching while listening loudly to Abba or Dubstep. Sometimes his neighbors complain. But Luis doesn´t care."
)
file = URI.open("https://cdnb.artstation.com/p/assets/images/images/006/978/227/large/luis-ramos-porco1.jpg?1502742323")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Frances",
user: User.last,
profession: "Weapons Dealer",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Francis nickname is Bacon. Not because he is tasty but because he likes Philosophy. He is diligent and an overall nice pig. Careful he does not like the color maroon!"
)
file = URI.open("https://ichef.bbci.co.uk/news/624/media/images/81889000/png/_81889973_swns_porky_pub_06_624.png")
pig.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pig.save!

pig = Pig.new(
name: "Barbara",
user: User.last,
profession: "Un-Diplomat",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Barbara is works as a UN-Diplomat in the central area of Africa. She has seen a lot and sometimes wishes to escape her stressful day to day job and become a gardener in the South of France.",
)
file = URI.open("https://images.unsplash.com/photo-1598493253616-1f2bc5d63991?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=789&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!


pig = Pig.new(
name: "Gonzales",
user: User.last,
profession: "Woodworker",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Gonzales makes his own furniture. He is skilled in pretty much everything. He is truly a versatile pig. If you do not really know why you need a pig but are sure that you do need a pig. Gonzales is your pick!.",
)
file = URI.open("https://images.unsplash.com/photo-1587007451503-4a5aa58abfc5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Candice",
user: User.last,
profession: "Free Spirit",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Candice makes people happy. She oinks a lot and likes to eat. A simple pig for people with complicated lives. Time with Candice never seems wasted.",
)
file = URI.open("https://images.unsplash.com/photo-1533586473300-f66da55c9cf7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Juliette",
user: User.last,
profession: "Sales Person",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Juliette is awful. I only offer her here to get some time away from her. Seriously she sucks! But by booking her you would do the good deed of giving me some free space I desperately need.",
)
file = URI.open("https://images.unsplash.com/photo-1546981969-f0c74fe14902?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Carol",
user: User.last,
profession: "F-22 Pilot",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Carol always knew she wanted to be a fighter jet pilot. Starting as a little suckling she threw herself of barn roofs and throwing darts at her little brothers and sisters. Some years later she is now a decorated general in the army of Costa Rica.",
)
file = URI.open("https://images.unsplash.com/photo-1543360308-232162ffd6e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
  name: "Richard",
  user: User.last,
  profession: "Stoner",
  weight: rand(25..500),
  age: rand(2..100),
  price: rand(1..100),
  bio: "Richard likes Bob Ross and the occasional joint. He is a wanted fugitive in pretty much all of South East Asia. He makes Kickass French Toast and is a relaxed pig to spend time with.",
  )
  file = URI.open("https://images.unsplash.com/photo-1516467508483-a7212febe31a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80")
  pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
  pig.save!

pig = Pig.new(
name: "Piggy",
user: User.last,
profession: "Entrepeneur",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Piggy likes frogs. I do not know why. I do not even know how they communicate. It´s weird. But it´s her thing. So if you want a really open minded pig without any judgments. Go for it.",
)
file = URI.open("https://lh3.googleusercontent.com/proxy/VvzdjynuEoYZJDsYHMoxiq0IlTx5GCblcWrWqhJ_mEkSaGfQ97skwgPDmKljpHWqmxRD2zvIo4-XhZyNRR9HnHxKgZD6jzfHquo")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Trixie",
user: User.last,
profession: "Ballerina",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Trixie is our dashing little Beauty Queen! Having won Miss Piggy three years in a row it is no doubt that she is a little stunner and will catch all eyes upon her.",
)
file = URI.open("https://images.dailyhive.com/20160901142744/esther-icon-farm.jpg")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Klaus",
user: User.last,
profession: "Movie Star",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Starting at a young age, Klaus never failed to impress to world with his ability to adapt to any and every role. He has starred in multiple award winning movies and is nominated for the Oscars this year for his latest performance, so keep your pen sharp for your autograph!",
)
file = URI.open("https://images.unsplash.com/photo-1550825570-1959166c6e66?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=890&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Erika",
user: User.last,
profession: "Unemployed",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Though unemployed, her profession might as well be Drama Queen. You will always be on your tip toes to see whether the day ends comfortably on the couch with a movie marathon or if there is an argument brewing up. But who doesn’t love a good surprise??",
)
file = URI.open("https://pyxis.nymag.com/v1/imgs/d25/fd9/d6cd18c9caa1752c3177df19d94da23353-10-pot-belly-pig.rsquare.w330.jpg")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!

pig = Pig.new(
name: "Leo",
user: User.last,
profession: "Bartender",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: " If you thought you’ve had good cocktails before, think again! Leo is the greatest of the great and will leave your heart filled with joy and your head with bubbles as he mixes heaven on earth for you.",
)
file = URI.open("https://images.unsplash.com/photo-1591175660774-2a59438ceaf5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=747&q=80")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!


pig = Pig.new(
name: "Esther",
user: User.last,
profession: "Rockstar",
weight: rand(25..500),
age: rand(2..100),
price: rand(1..100),
bio: "Esther is an English singer, songwriter, and television personality. She rose to prominence during the 1970s as the lead vocalist of the heavy metal band Black Sabbath, during which period she adopted the nickname 'Princess of Darkness'.",
)
file = URI.open("https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fimages.squarespace-cdn.com%2Fcontent%2Fv1%2F5b71e83f1aef1d3e4bbd03f2%2F1534201222036-JHLKSIPN8AOXD4XNLRAN%2Fke17ZwdGBToddI8pDm48kL0aU6AQOwPnD5bbw5AxIml7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k9kZPbuygN4RSDPe_G5PO_WzeLEitOJDFFu_i-8GIjmhGpbh_WpB9q3hRnhtJGU4w%2FEsther_main_image_1.jpg%3Fformat%3D2500w")
pig.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pig.save!


puts "finished"