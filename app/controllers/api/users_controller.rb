class Api::UsersController < ApplicationController

  # before_action :authenticate_admin, except: [:create]
  
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      location: params[:location],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin]
    )
    if @user.save
      # params[:tasting_note_ids] = [3, 8, 9]
      params[:tasting_note_ids].each do |tasting_note_id|
        UserTastingNote.create(
          user_id: @user.id,
          tasting_note_id: tasting_note_id
        )
      end
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all
    render "index.json.jb"    
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.location = params[:location] || @user.location
    if params[:password] && params[:password].length > 1
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
    end
    # @user.admin = params[:admin] || @user.admin
    if @user.save
      @user.user_tasting_notes.destroy_all
      params[:tasting_note_ids].each do |tasting_note_id|
        UserTastingNote.create(
          user_id: @user.id,
          tasting_note_id: tasting_note_id
        )
      end
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: { message: "User destroyed successfully!" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

end
