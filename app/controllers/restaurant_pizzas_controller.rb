class RestaurantPizzasController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    def create
        restaurant = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant.pizza
        
    end

    def index
        restaurants = RestaurantPizza.all
        render json: restaurants, include: [:pizza, :restaurant]
        
    end



    private
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
        
    end

    def unprocessable_entity_response(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
        
    end
end
