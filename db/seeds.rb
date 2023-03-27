# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Hero.destroy_all
Power.destroy_all 
HeroPower.destroy_all


puts "🐕 Seeding data..."



10.times do 
    hero = Hero.create( 
        name: Faker::Superhero.suffix, 
        super_name: Faker::Superhero.name
     )
end

7.times do 
    power = Power.create(
        name: Faker::Superhero.power,
        description: Faker::TvShows::Suits.quote
    )
end
5.times do 
    hero_power = HeroPower.create(
      strength: [ "Strong", "Weak", "Average" ].sample,
      power_id: rand(1..3),
      hero_id: rand(1..3)
    )
end
  
  puts "✅ Done seeding!"
