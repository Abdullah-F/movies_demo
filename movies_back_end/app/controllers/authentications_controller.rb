class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    expires_at = 1.hour.from_now
    expires_in_seconds = expires_at - Time.now

    result = User::Authenticate
      .call(email: params[:email], password: params[:password], exp: expires_at)

    if result.success?
      render json: result.user.as_json.merge(JWTtoken: result.token, expires_in: expires_in_seconds)
    else
      render json: { error: result.errors }, status: :unauthorized
    end
  end
end
