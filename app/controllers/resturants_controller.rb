class ResturantsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprossesable_entity_response

    def index
      resturants =Resturant.all
      render json: resturants
    end
    def show
     resturant = find_resturant
      render json: restaurant , status: :ok
    end

    def create
     resturant =Resturant.create!(resturant_params)
      render json: resturant , status: :created
    end
    def update
     resturant = find_resturant
     resturant.update!(resturant_params)
      render json: resturant
    end

    def destroy
      resturant=find_resturant
      resturant.destroy
      head :no_content
    end

    private
    def find_resturant
     Resturant.find(params[:id])
    end


    def resturant_params
      params.permit(:name,:address)
    end
    def render_not_found_response
      render json: {error: "resturant not found"}, status: :not_found
    end

    def render_unprossesable_entity_response
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end


end
