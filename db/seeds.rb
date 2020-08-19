# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 
(1..(1..25).to_a.sample).to_a.each do |num|

    Milestone.create(title: "Milestone Story #{num}", content: "A wonderful story ##{num}", age:"#{num}", location: "a magical place")   
end


puts "Finished Seeding Milestones"