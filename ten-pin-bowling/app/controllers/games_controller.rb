class GamesController < ApplicationController
	before_action :get_game, only: [:show, :destroy]

	def index
		@games = Game.all
	end

	def show
		@game = Game.find_by(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)

		if @game.save
			redirect_to@game
		else
			redirect_to games_path
		end
	end

	def destroy
		@game.destroy
		redirect_to games_path
	end

	private

	def game_params
		params.require(:game).permit(:team)
	end

	def get_game
		@game = Game.find_by(params[:id])
	end

end
