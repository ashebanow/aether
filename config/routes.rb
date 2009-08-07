ActionController::Routing::Routes.draw do |map|
  map.resource  :account, :controller => "users"
  map.resource  :user_session
  map.resources :users

  map.resources :password_resets

  map.resources :characters

  map.root :controller => "characters", :action => "index"
end
