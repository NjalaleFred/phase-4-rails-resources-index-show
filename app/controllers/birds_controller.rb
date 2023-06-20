class BirdsController < ApplicationController
    def index
        @birds = Bird.all
        render json: @birds, status: 200
    end

    def show
        @bird = Bird.find_by(id: params[:id])
        if @bird
            render json: @bird
        else
            render json: {error: "Bird not found"}, status: 400
        end
    end
end