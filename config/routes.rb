Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'posts/update'

  get 'posts/new'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/index'

  get 'posts/destroy'

  get 'post/new'

  get 'post/create'

  get 'post/edit'

  get 'post/show'

  get 'post/index'

  get 'post/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
