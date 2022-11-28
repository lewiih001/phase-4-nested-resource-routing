Rails.application.routes.draw do

  #resources :dog_houses, only: [:show] do
    # nested resource for reviews
    #resources :reviews, only: [:show, :index]
  #end

  #resources :reviews, only: [:show, :index, :create]

  resources :dog_houses do
    resources :reviews do
      resources :comments
    end
  end
end