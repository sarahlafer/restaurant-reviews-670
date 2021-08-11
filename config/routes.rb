Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # get "/top", to: "restaurants#top"
      get :top
    end

    member do
      get :chef
      # get "/chef", to: "restaurants#chef"
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# /reviews/new

# /restaurants/:id/reviews/new




# /restaurants/top


# collection


# member

# /restaurant/2/city