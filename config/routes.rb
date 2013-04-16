Railsgirls::Application.routes.draw do

  get "sessions/new"

  get "sessions/create"

  get "sessions/failure"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
 
  root :to => 'events#index'


get   '/login', :to => 'sessions#new', :as => :login
match '/auth/:provider/callback/', :to => 'sessions#create'
match '/auth/failure', :to => 'sessions#failure'

end
