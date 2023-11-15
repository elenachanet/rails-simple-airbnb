# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all

  flat_london = {name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3}

  flat_paris = { name: 'Cozy Studio in the Heart of Paris',
    address: '5 Rue de la Paix, 75002 Paris, France',
    description: 'Charming studio with a view, perfect for a romantic getaway in the heart of Paris. Close to iconic landmarks and vibrant neighborhoods.',
    price_per_night: 90,
    number_of_guests: 2}

  flat_nyc = {name: 'Modern Loft in New York City',
    address: '123 Main Street, New York, NY 10001, USA',
    description: 'Sleek and stylish loft with a modern design, located in the heart of Manhattan. Ideal for urban explorers and business travelers.',
    price_per_night: 120,
    number_of_guests: 4}

  flat_barcelona = {name: 'Seaside Villa in Barcelona',
    address: '15 Passeig Marítim, 08003 Barcelona, Spain',
    description: 'Luxurious villa with stunning views of the Mediterranean Sea. Relax by the pool or take a short walk to the beautiful beaches of Barcelona.',
    price_per_night: 150,
    number_of_guests: 6}

  flat_garden = {  name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3}

[flat_london, flat_paris, flat_nyc, flat_barcelona, flat_garden].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
