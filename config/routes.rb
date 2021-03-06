Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  root 'items#index'

  resources :items do
    collection do
      get ':id/seller' => 'items#seller'
      post 'purchased/:id' => 'items#purchased'
      get  'sell_item'
    end
  end

  resources :users, only: [:index, :new, :show, :destroy]do
    collection do
      get 'new1','new2','new3','new4','create_finish','user_confilm','user_profile', 'credit'
    end
  end



end
