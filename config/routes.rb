Rails.application.routes.draw do
  get 'plants/create'
  get 'plants/show'
  get 'plants/destroy'
  root "gardens#index"
  resources :gardens, except: [:index] do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:show, :destroy]
end
