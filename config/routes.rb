ActionController::Routing::Routes.draw do |map|
  map.resource  :account, :controller => "users"
  map.resource  :user_session
  map.resources :users

  map.resources :password_resets

  map.resources :characters

  map.root :controller => "characters", :action => "index"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'  
end
