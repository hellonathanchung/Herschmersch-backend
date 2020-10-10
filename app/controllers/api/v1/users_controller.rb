class Api::V1::UsersController < ApplicationController
  def create

    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'Failed to create a user' }, status: :not_acceptable
    end
  end

  def login 
    @user = User.find_by(username: params[:username])
    
    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user:UserSerializer.new(@user), token:token}
    else 
      render json: {error: 'Your username and passsword do not match. Please try'}
    end
  end
 
  def show
    user = User.find_by(id: params[:id])
  end
  
  def index
    users = User.all
    render json: users
  end

  private
  def user_params
    params.require(:user).permit( :first_name, :last_name, :username, :imageUrl,:password, :password_confirmation, )
  end

  
end