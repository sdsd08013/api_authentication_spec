Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'

  get 'pages/show'

  get '/top' => 'top#index'
end
