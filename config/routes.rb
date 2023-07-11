Rails.application.routes.draw do
  get '/memo', to: 'memo#index', as: 'memo_index'
  get '/memo/show', to: 'memo#show', as: 'memo_show'
  get '/memo/create', to: 'memo#create', as: 'memo_create'
  get '/memo/edit', to: 'memo#edit', as: 'memo_edit'
  post '/memo/update', to: 'memo#update', as: 'memo_update'
  get '/memo/destroy', to: 'memo#destroy', as: 'memo_destroy'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
