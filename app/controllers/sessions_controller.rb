class SessionsController < ApplicationController
  def new
  end

def create
    auth = request.env["omniauth.auth"]
    user = Authorization.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Authorization.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
end

  def failure
  end
end
