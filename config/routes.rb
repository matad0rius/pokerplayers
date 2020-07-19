Rails.application.routes.draw do
  resources :establos, only: :show

  resources :players, only: :show do
    collection do 
      get 'search_results'
    end
  end

  root 'establos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
