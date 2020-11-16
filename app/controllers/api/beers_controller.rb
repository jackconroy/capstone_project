class Api::BeersController < ApplicationController

  def index
    @beers = Beer.limit(100)
    render "index.json.jb"
  end

  def show
    @beer = Beer.find(params[:id])
    render "show.json.jb"
  end

  # def create
  #   beer = Beer.new(
  #     name: params[:name],
  #     brewery: params[:brewery],
  #     style: params[:style],
  #     abv: params[:abv],
  #     image: params[:image]
  #   )
  #   if beer.save
  #     render json: { message: "Beer created successfully" }, status: :created
  #   else
  #     render json: { errors: beer.errors.full_messages }, status: :bad_request
  #   end
  # end

  # def update
  #   @beer = Beer.find(params[:id])
  #   @beer.name = params[:name] || @beer.name
  #   @beer.brewery = params[:brewery] || @beer.brewery
  #   @beer.style = params[:style] || @beer.style
  #   @beer.abv = params[:abv] || @beer.abv
  #   @beer.image = params[:image] || @beer.image
  #   if @beer.save
  #     render "show.json.jb"
  #   else
  #     render json: { errors: @beer.errors.full_messages }, status: :bad_request
  #   end
  # end

  # def destroy
  #   beer = Beer.find(params[:id])
  #   if beer.destroy
  #     render json: { message: "Beer destroyed successfully!" }, status: :created
  #   else
  #     render json: { errors: beer.errors.full_messages }, status: :bad_request
  #   end
  # end


end
