Rails.application.routes.draw do

  resources :politicians, only: [:edit, :show, :update, :destroy, :index]

  resources :posts do
    resources :comments, only:[:new, :create, :edit, :update, :destroy]
  end

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
