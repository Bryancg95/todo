Rails.application.routes.draw do
  get 'send' => 'send#index'
  post 'send' => 'send#create'
  resources :todo_lists do
     resources :todo_items do
      member do
       patch :complete
      end
    end
  end
  get 'pages/index'
  devise_for :users
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
