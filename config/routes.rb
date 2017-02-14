Rails.application.routes.draw do
  devise_for :users
  get '/pages' => 'pages#index'
end
