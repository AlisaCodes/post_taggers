Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/create'

  get 'tags/:tag', to: 'posts#index', as: "tag"

  root 'posts#index'
  resources :posts, only: [:create]
end
