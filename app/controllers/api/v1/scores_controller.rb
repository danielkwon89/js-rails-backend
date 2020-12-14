class Api::V1::ScoresController < ApplicationController

    def index
        scores = Score.all
        render json: ScoreSerializer.new(scores)

        # options = {
        #     include: [:player]
        # }
        # render json: ScoreSerializer.new(scores, options)
    end

    def create
        score = Score.new(score_params)

        # This route needs to be updated to use the JSON serializer

        if score.save
            render json: score, status: :accepted
        else
            render json: {errors: score.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def score_params
        params.require(:score).permit(:score_value, :player_id)
    end
end
