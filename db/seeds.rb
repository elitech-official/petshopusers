# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create!(
  name: "Frank",
  age: 25, 
  email: "frank@somemail.com",
  sex: 1 
)

User.create!(
  name: "Steve",
  age: 53,
  email: "steve@anothermail.com",
  sex: 1
)

User.create!(
  name: "Susan",
  age: 18,
  email: "susan@kitten.com",
  sex: 0
)

User.create!(
  name: "Kate",
  age: 40,
  email: "ihatekate@mail.ru",
  sex: 0
)


User.find(1).pets.create(
[{name: "Kitty1", age: 3, color: "black", pet_type: 1}, {name: "Kitty2", age: 3, color: "ginger", pet_type: 1}, {name: "Spike", age: 7, color: "brown", pet_type: 0}] 
)

User.find(2).pets.create(
[{name: "Pvt.Showball", age: 2, color: "black", pet_type: 1}, {name: "Pvt.Joker", age: 1, color: "white", pet_type: 1}, {name: "Pvt.Pile", age: 4, color: "brown", pet_type: 1}] 
)

User.find(3).pets.create(
[{name: "Coward", age: 5, color: "blue", pet_type: 2}, {name: "Dummy", age: 3, color: "green", pet_type: 1}, {name: "Seasoned", age: 2, color: "gray", pet_type: 0}] 
)

User.find(4).pets.create(
[{name: "Long Tom", age: 9, color: "orange", pet_type: 3}, {name: "Longer Jane", age: 8, color: "orange", pet_type: 3}, {name: "Longest Jonh", age: 7, color: "orange", pet_type: 3}] 
)

