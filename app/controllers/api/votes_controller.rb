class Api::VotesController < ApplicationController

  before_action :authenticate_user

  def index
    @votes = Vote.all
    render "index.json.jb"
  end

  def create
    vote = Vote.new(
      user_id: current_user[:id],
      beer_id: params[:id],
      vote_value: params[:vote_value]
    )
    vote.save
    render json: { message: "Vote submitted!" }
    
  end

  def update 
    @vote = Vote.find(params[:id])
    @vote.user_id = current_user[:id]
    @vote.beer_id = params[:beer_id] || @vote.beer_id
    @vote.vote_value = params[:vote_value] || @vote.vote_value
    @vote.save
    render json: { message: "Vote updated!" }    
  end
  
end
