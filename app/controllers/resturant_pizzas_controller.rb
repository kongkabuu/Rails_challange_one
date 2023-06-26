class ResturantPizzasController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprossesable_entity_response

    def index
      rest_p =ResturantPizza.all
      render json: rest_p
    end
    def show
     rest_p = find_resturant
      render json: rest_p, status: :ok
    end

    def create
      rest_p =ResturantPizza.create!(pizza_params)
      render json: rest_p , status: :created
    end
    def update
      rest_p = find_resturant
     ResturantPizza.update!(resturant_params)
      render json:rest_p
    end

    def destroy
      rest_p=find_resturant
      rest_p.destroy
      head :no_content
    end

    private
    def find_resturant
     ResturantPizza.find(params[:id])
    end


    def resturant_params
      params.permit(:price)
    end
    def render_not_found_response
      render json: {error: "resturant_pizza not found"}, status: :not_found
    end

    def render_unprossesable_entity_response
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

  end
end

end
