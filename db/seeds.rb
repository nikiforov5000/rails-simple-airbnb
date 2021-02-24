20.times do
  flat = Flat.create!(
    name: Faker::FunnyName.three_word_name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.words(number: 20),
    price_per_night: rand(20..2000),
    number_of_guests: rand(1..10)
  )
  puts "Added flat: #{flat.name}"
end 
puts "All seeded"