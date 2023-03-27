class PowersController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        render json: Power.all, except: [:created_at, :updated_at]
    end

    def show 
        power = find_power
        render json: power, except: [:created_at, :updated_at]
    end

    def update
        power = find_power
        power.update!(power_params)
        render json: power, only: [:name, :description ]

    end

    private 

    def find_power 
         Power.find(params[:id])
    end

    def power_params 
        params.permit( :name, :description )
    end

    def render_not_found_response 
        render json: { error: "Power not found" }, status: :not_found
    end

    def render_unprocessable_entity_response 
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
