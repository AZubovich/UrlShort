Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home' 
  post '/links/create'
  get '/show/:id', to: 'links#show', as: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
