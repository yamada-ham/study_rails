Rails.application.routes.draw do
  get '/memo', to: 'memo#index'
  get '/memo/create', to: 'memo#create'
  get '/memo/edit', to: 'memo#edit'
  get '/memo/destroy', to: 'memo#destroy'
end
