ActionController::Routing::Routes.draw do |map|
  map.resource  :account, :controller => "users"
  map.resource  :user_session

  map.resources :password_resets

  map.resources :characters, :except => [:edit],
                :member => { :combat => :get,  :inventory => :get,
                             :spells => :get,  :rites => :get,
                             :feats => :get,   :skills => :get }

  map.root :controller => "characters", :action => "index"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'  
end
