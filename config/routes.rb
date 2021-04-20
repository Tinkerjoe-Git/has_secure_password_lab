Rails.application.routes.draw do
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'users/new'

  # get 'users/create'

  get '/signup', to: 'users#new', as: :signup
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: :home_page_path

  get '/login', to: 'sessions#new', as: :login
  post '/sessions', to: 'sessions#create', as: :logging_in
  delete '/logout', to: 'sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
