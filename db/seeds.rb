puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}
hoomies = {name: "hoomies", address: "745 Dary St, London W2 4JE", category: "belgium"}
pizza_north =  {name: "Pizza North", address: "56A Shore St, Wales E9 5PR", category: "japanese"}
mooom = {name: "Moom", address: "7 Bouboury St, itls QP2 3O4", category: "chinese"}
pittta =  {name: "pittta", address: "56A Shoith Low av, London A2 5IQ", category: "italien"}

[dishoom, pizza_east, hoomies, pizza_north, mooom, pittta].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Creating restaurants..."
review01 = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
review02 =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}
review03 = {name: "hoomies", address: "745 Dary St, London W2 4JE", category: "belgium"}
review04 =  {name: "Pizza North", address: "56A Shore St, Wales E9 5PR", category: "japanese"}
review05 = {name: "Moom", address: "7 Bouboury St, itls QP2 3O4", category: "chinese"}
review06 =  {name: "pittta", address: "56A Shoith Low av, London A2 5IQ", category: "italien"}

[review01, review02, review03, review04, review05, review06].each do |attributes|
  review = Review.create!(attributes)
  puts "Created #{review.}"
end
puts "Finished!"
