Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :establos, only: :show

  resources :players, only: :show do
    collection do 
      get 'search_results'
    end
  end

  root 'establos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
