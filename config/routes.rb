Rails.application.routes.draw do
  get '/memo', to: 'memo#index'
  get '/memo/show', to: 'memo#show'
  get '/memo/create', to: 'memo#create'
  get '/memo/edit', to: 'memo#edit'
  get '/memo/destroy', to: 'memo#destroy'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
