class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    result = User::Authorize.call(headers: request.headers)
    unless result.success?
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
    @current_user = result.user
  end
end

