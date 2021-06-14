class ApplicationController < ActionController::API
  before_action :authenticate_request

  def authenticate_request
    user = AuthenticateUserService.new(params[:email], params[:password]).call

    if user
      @current_user = user
    else
      render json: { error: user.errors }, status: :unauthorized
    end
  end
end
