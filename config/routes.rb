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
  
  post 'advertisers/update_positions(/:advertiser)' => 'advertisers#update_positions'

  resources :products
  
  root :to => 'advertisers#index'
end
