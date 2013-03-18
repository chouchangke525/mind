# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Admin.destroy_all
 User.destroy_all
 Category.destroy_all
 Content.destroy_all

  Admin.create name: "CHOUCHANGKE525",
      
      password: "chouchangke525",
      password_confirmation: "chouchangke525"
      
  User.create name: "yichen525",
      password: "yichen525",
      password_confirmation: "yichen525"
      
  Category.create word: "Other"
  
  Content.create user_id: 1,
        mind: "I am so happy today.",
        title: "The first mind.",
        category_id: 1
