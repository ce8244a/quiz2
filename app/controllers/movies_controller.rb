class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end
	
	def create
    Movie.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:movie).permit(:name, :description, :year)
  end
end
