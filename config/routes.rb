Rails.application.routes.draw do
  devise_for :users
  get '/top' => 'top#index'
end
