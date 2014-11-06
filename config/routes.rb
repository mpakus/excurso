Rails.application.routes.draw do

  # backend
  get 'admin' => redirect('admin/tours')
  namespace :admin do
    resources :tours, except: [:show]
  end

  # manager cabinets
  get 'cabinet' => redirect('cabinet/tours')
  namespace :cabinet do
    resources :tours, only: [:index, :update]
  end

  # front
  root 'tours#index'
  resources :tours, only: [:index, :show] do
    get :city, :category, on: :member
    get :categories,      on: :collection
  end
  devise_for :users

end
