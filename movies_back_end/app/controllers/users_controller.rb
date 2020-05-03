class UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    user = User.new(user_params)

    if user.save
      render json: user, JWTtoken: JsonWebToken.encode(user_id: user.id), status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end
end
