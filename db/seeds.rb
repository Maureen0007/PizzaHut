puts "🌱 Seeding pizza..."
Pizza.destroy_all
Restaurant.destroy_all
RestaurantPizza.destroy_all

5.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.street_address
    )
end

    #  pizza
    Pizza.create(name:"Pizza Marinara", ingredients:"tomatoes, garlic, oregano, and extra virgin olive oil.")
    Pizza.create(name:"Pizza Margherita", ingredients:"tomatoes, sliced mozzarella, basil, and extra virgin olive oil.")
    Pizza.create(name:"Pizza Margherita extra", ingredients:" tomatoes, mozzarella from Campania, basil, and extra virgin olive oil.")
    Pizza.create(name:"Pizza Alla Vongole", ingredients:"tomato sauce, mozzarella, garlic, chili powder, and small clams.")
    Pizza.create(name:"Pizza Salame", ingredients:"tomato sauce, mozzarella, and Italian salami.")


    # resstaurant-pizza
    20.times do
        RestaurantPizza.create(
        price: rand(1..30),
        pizza_id:Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id
    )
    end
    puts "Done seeding"