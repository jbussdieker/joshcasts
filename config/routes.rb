Joshcasts::Application.routes.draw do
  devise_for :users

  resources :tutorials
  root :to => 'tutorials#index'
end
