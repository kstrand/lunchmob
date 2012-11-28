Lunchmob::Application.routes.draw do
  # See how all your routes lay out with "rake routes"

  match "/mobs/:mob_id" => "mobs#show"
  match "/mobs/:mob_id(/users/:user_id)" => "mobs#show"

  resources :mobs
  resources :users

  root to: 'users#new'
end

