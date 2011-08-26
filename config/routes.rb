Clinventory::Application.routes.draw do
  resources :advertisers do
    collection do
      get :active
      get :upcoming
      get :paid
      get :unpaid
      get :archived
      get :code
    end
  end

  resources :products
  
  root :to => 'advertisers#index'
end
