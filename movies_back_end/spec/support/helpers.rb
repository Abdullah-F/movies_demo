module Helpers
  def sign_in_user
    user = create(:user)
    token = JsonWebToken.encode({ user_id: user.id }, 24.hours.from_now)
    request.headers.merge!('Authorization': "#{token}")
  end
end
