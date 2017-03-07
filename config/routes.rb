Rails.application.routes.draw do




  resources :politicans, only: [:edit, :show, :update]

  resources :posts do
    resources :comments, only:[:new, :create, :edit, :update, :destroy]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
