Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }


  scope '(:locale)', locale: /en|ca|es/ do

    resources :politicians

    resources :posts do
      resources :comments, only:[:new, :create, :edit, :update, :destroy]
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
      end
    end

    get "notifications/:id/link_through", to: "notifications#link_through", as: :link_through

    get "/about" => "pages#about_us"
    root to: 'pages#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
