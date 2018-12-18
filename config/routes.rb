Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'items#index'

  resources :users, only: [:index, :new, :show]do
    collection do
      get 'new1','new2','new3','new4','create_finish','user_confilm','user_profile','credit'
      # get 'new2'
      # get 'new3'
      # get 'new4'
      # get 'create_finish'
      # get 'user_confilm'
      # get 'user_profile'
      # get 'credit'
    end
  end

  # get 'users/:id' => 'users#show'
  # get 'users/new'
  resources :items do
    collection do
      get ':id/seller' => 'items#seller'
    end
  end

end
