# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 

  Admin.create name: "CHOUCHANGKE525",
      
      password: "chouchangke525",
      password_confirmation: "chouchangke525"
      
  User.create name: "yichen525",
      password: "yichen525",
      password_confirmation: "yichen525"
      
  Category.create word: "Other"
  
  Content.create user_id: User.find_by_name("yichen525").id
  mind: I am so happy today.
  title: The first mind.
  category_id: Category.find_by_name("Other").id
