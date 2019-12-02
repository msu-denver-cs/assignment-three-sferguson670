Rails.application.routes.draw do
  devise_for :users

# search_cars GET /cars/search(.:format) cars#search
  resources :cars do
      collection do
          get 'search'
      end
  end

  # search_makes GET /makes/search(.:format) makes#search
  resources :makes do
      collection do
          get 'search'
      end
  end

# search_parts GET /parts/search(.:format) parts#search
  resources :parts do
      collection do
          get 'search'
      end
  end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# default route
root to: 'cars#index'

end
