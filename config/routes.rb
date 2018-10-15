Rails.application.routes.draw do
  resources :todo_lists
  get 'pages/index'
  devise_for :users
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
