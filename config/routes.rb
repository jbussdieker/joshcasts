Joshcasts::Application.routes.draw do
  resources :tutorials
  root :to => 'tutorials#index'
end
