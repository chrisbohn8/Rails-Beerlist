class BeersController < ApplicationController

  http_basic_authenticate_with name: "enbw", password: "seanthony5150", except: [:beerlist, :index, :show]

	def beerlist
		@beers = Beer.all
	end

	def index
		@beers = Beer.all
	end

	def show
		@beer = Beer.find(params[:id])
	end

	def new
		@beer = Beer.new
	end

	def edit
		@beer = Beer.find(params[:id])
	end

	def create
		@beer = Beer.new(beer_params)

		if @beer.save
			redirect_to @beer
		else
			render 'new'
		end
	end

	def update
		@beer = Beer.find(params[:id])
			if @beer.update(beer_params)
		    	redirect_to @beer
 			else
			    render 'edit'
			end
	end

	def destroy
		@beer = Beer.find(params[:id])
		@beer.destroy

		redirect_to beers_path
	end

	private
		def beer_params
			params.require(:beer).permit(:name, :tagline, :abv, :tier, :ibu, :image, :ontap, :description)
		end
end
