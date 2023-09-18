Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :plactices do
    collection do
      post :confirm
      get :complete
    end
  end

  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/show" => "users#show"



end
