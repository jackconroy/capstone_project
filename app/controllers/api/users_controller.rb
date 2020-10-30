class Api::UsersController < ApplicationController

  before_action :authenticate_admin, except: [:create]
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      location: params[:location],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
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
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.admin = params[:admin] || @user.admin
    if @user.save
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
