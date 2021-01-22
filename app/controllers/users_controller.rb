class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  def index
    users = User.all
    render json: users
  end

  # Sign Up
  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({user_id: user.id})
      render json: {user: user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  # Log In
  def login
    user = User.find_by(username: user_params[:username])
    if user && user.authenticate(user_params[:password])
      token = encode_token({user_id: user.id})
      render json: {user: user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
