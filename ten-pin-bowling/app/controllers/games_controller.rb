class GamesController < ApplicationController
	before_action :get_game, only: [:show, :destroy, :add_player, :start]

	def index
		@games = Game.all
	end

	def show
		# @game = Game.find_by(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)

		if @game.save
			redirect_to @game
		else
			redirect_to games_path, alert: 'Invalid Team Name'
		end
	end

	def add_player
		@game.players.new(name: params[:player][:name])

		flash = "Invalid name" unless @game.save

		redirect_to @game, alert: flash
	end

	def start
		if@game.players.size > 0
			@game.start
			flash = "Game Started"
		else
			flash = "Game requires at least 1 player"
		end

		redirect_to @game, alert: flash
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
		@game = Game.find(params[:id])
	end

end
