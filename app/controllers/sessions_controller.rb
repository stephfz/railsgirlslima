class SessionsController < ApplicationController
  def new
  end

 def create
  auth_hash = request.env['omniauth.auth']
  @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
  if @authorization
  	render  :text => "Welcome #{@authorization.user.name}"
  else
  	user = User.new :name => auth_hash["user_info"]["name"], :email => auth_hash["user_info"]["email"]
  	user.authorizations.build :provider => auth_hash["user_info"]["provider"], :uid => auth_hash["uid"]
    render :text => "Hi #{user.name}! You've signed up."
   end
end

  def failure
  end
end