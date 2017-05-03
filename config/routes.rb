Rails.application.routes.draw do

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  scope '(:locale)', locale: /en|ca|es/ do

    resources :politicians

    resources :posts do
      resources :comments, only:[:new, :create, :edit, :update, :destroy]
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
      end
    end

    get "/about" => "pages#about_us"
    root to: 'pages#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
