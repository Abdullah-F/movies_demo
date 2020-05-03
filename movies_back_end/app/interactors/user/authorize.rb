class User::Authorize
  include Interactor

  def call
    login_user
  end

  private

  def login_user
    user =  User.find(decoded_auth_token[:user_id]) if decoded_auth_token
    unless user.present?
      context.fail!(errors: {token: 'Invalid token'} )
    end
    context.user = user
  end

  def decoded_auth_token
    JsonWebToken.decode(http_auth_header)
  end

  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      context.fail!(errors: {token: 'Missing token'} )
    end
  end

  def headers
    context.headers
  end
end
