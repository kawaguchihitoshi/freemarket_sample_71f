Rails.application.routes.draw do
  get 'card/new'
  get 'card/show'
  devise_for :users
  root 'items#index'
  
  resources :users , only:[:index] do
    collection do
      get :logout 
      get :creditcard
    end
  end

  resources :items do
    member do
      get :purchase
    end
  end
end

