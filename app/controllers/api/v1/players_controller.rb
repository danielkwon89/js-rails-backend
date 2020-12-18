class Api::V1::PlayersController < ApplicationController

    def index
        players = Player.all
        render json: PlayerSerializer.new(players)
    end

    def create
        player = Player.new(player_params)

        existing_player = Player.all.find_by(name: player.name)

        if existing_player
            render json: PlayerSerializer.new(existing_player), status: :accepted
        elsif player.save
            render json: PlayerSerializer.new(player), status: :accepted
        else
            render json: {errors: player.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def player_params
        params.require(:player).permit(:name)
    end  
end
