Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :spots

  authenticated :user do
    root 'spots#index', as: :authenticated_root
    get 'users/:id', to: 'users#show', as: :profile
  end

  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

end
