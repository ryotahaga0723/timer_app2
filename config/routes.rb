Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'drinkings#index'
  get  "drinkings/index_admin_user/:id"  => "drinkings#index_admin_user", as:"index_admin_user"

  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'


  resources :drinkings do
    collection do
      get :calculation 
      get :index_admin_day
    end
  end

  resources :visuallies
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
end

