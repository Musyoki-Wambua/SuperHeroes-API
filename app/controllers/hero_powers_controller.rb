class HeroPowersController < ApplicationController

    def create 
        hero_power = HeroPower.create(hero_powers_params)
        if hero_power.valid?
            render json: hero_power
        else 
            render json: { error: ["validation errors"] }, status: :unprocessable_entity 
        end
    end
end
