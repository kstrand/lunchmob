Lunchmob::Application.routes.draw do
  get "static_pages/home"

  get "static_pages/help"

  get "static_pages/about"

  # See how all your routes lay out with "rake routes"

  match "/mobs/:mob_id" => "mobs#show"
  match "/mobs/:mob_id(/users/:user_id)" => "mobs#show"

  resources :notices
  resources :mobs
  resources :users
  resources :home


  #root to: 'users#new'
  
  root to: 'home#index'

end

