class AuthenticateUserService
  
  def initialize(email,password)
    @email = email
    @password = password
  end

  def call
    user = User.find_by_email(@email)
    if user.authenticate(@password)
      user
    else
      false
    end
  end
end