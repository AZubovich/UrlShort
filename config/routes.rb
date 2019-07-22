Rails.application.routes.draw do
  root to: 'pages#home'
  post '/links/create' 
  get 'redirect', to: 'links#redirect', as: 'redirect'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
