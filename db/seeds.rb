# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
GrandmotherOffer.destroy_all 


banana = User.create!(email: 'banan@banan.com', password: '123156', username: 'banana')
apple = User.create!(email: 'apple@apple.com', password: 'applelovesapple', username: 'apple')
user = User.create!(email:"m@gmail.de", first_name:"bob", last_name:"ross", username:"bobr", password: "123456")
puts 'finished'

puts 'creating grandmas'
GrandmotherOffer.create(user_id: banana.id, first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOffer.create(user_id: apple.id, first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you can call me Elizabeth. I am very into buiscuits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

GrandmotherOffer.create(user_id: apple.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'leeeeeslie', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')


GrandmotherOffer.create!(user_id: user.id, first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

GrandmotherOffer.create!(user_id: user.id, first_name: 'Leslie', last_name: 'Bauwers', username: 'leeeeeslie', activity_price: 'cake', activity_type: 'reading stories', description: 'Hello, my name is Leslie, I am 78 years old. I like to tell people some old storys, so they wont be forgotten in the future. If you like to listen and have some cake, feel free to join me.')


p "CREATED #{GrandmotherOffer.count}"


# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')git add .

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')

# GrandmotherOsffer.new(first_name: 'Queen', last_name: 'Elizabeth', username: 'realQueenElizabeth', activity_price: 'one big smile', activity_type: 'playing cricket', description: 'Hi, I am the Queen, but you cann call me Elizabeth. I am very into buisquits and love hanging out with my family. If you like playing cricket, you are more then welcome to join me and a cup of tea. Sincerly - Elizabeth')
