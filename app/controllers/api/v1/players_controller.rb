class Api::V1::PlayersController < ApplicationController

    def index
        players = Player.all
        render json: PlayerSerializer.new(players)
    end

    def create
        player = Player.new(player_params)

        # This route needs to be updated to use the JSON serializer

        if player.save
            render json: score, status: :accepted
        else
            render json: {errors: player.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def player_params
        params.require(:player).permit(:name)
    end  
end
