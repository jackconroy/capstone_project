class Api::VotesController < ApplicationController

  before_action :authenticate_user

  def index
    @votes = Vote.all
    render "index.json.jb"
  end

  def create
    @vote = Vote.new(
      user_id: current_user.id,
      beer_id: params[:beer_id],
      vote_value: params[:vote_value]
    )
    if @vote.save
      render "show.json.jb"
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update 
    @vote = Vote.find(params[:id])
    @vote.vote_value = params[:vote_value] || @vote.vote_value
    if @vote.save
      render "show.json.jb"
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
    end   
  end
  
end
