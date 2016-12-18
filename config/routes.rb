Rails.application.routes.draw do
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'houses#index'
  get    '/auth/:provider'          => 'omniauth#auth', as: :auth
  get    '/auth/:provider/callback' => 'sessions#create'
  get    '/auth/failure'            => 'sessions#failure'

  get    '/login'                   => 'sessions#new'
  post   '/login'                   => 'sessions#create'
  get    '/logout'                  => 'sessions#destroy'
end
