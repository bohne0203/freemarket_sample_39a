Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'items#index'

  get 'users/new'
  get 'users/user_profile'
  get 'users/user_confilm'
  get 'users/credit'

  resources :users do
    collection do
      get 'new1'
      get 'new2'
      get 'new3'
      get 'new4'
      get 'create'
    end
  end

  get 'users/:id' => 'users#show'

  resources :items do
    collection do
      get ':id/seller' => 'items#seller'
    end
  end

end
