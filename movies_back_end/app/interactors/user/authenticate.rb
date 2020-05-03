class User::Authenticate
  include Interactor
  delegate :email, :password, :exp, :fail!, to: :context

  def call
    if authenticated?
      context.token = JsonWebToken.encode({ user_id: context.user.id }, exp)
    end
  end

  private

  def authenticated?
    user = User.find_by_email(email)
    context.user = user if user && user.authenticate(password)
    fail!(errors: [:user_authentication, "invalid credentials"]) unless user.present?
    true
  end
end
