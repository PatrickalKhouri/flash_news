Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :news, only: %i[new create edit update destroy]

  get 'news/es/:id', to: 'news#show_es'
  get 'news/pt/:id', to: 'news#show_pt'
  get 'news/pt', to: 'news#index_pt'
  get 'news/es', to: 'news#index_es'

end
