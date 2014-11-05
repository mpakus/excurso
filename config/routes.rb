Rails.application.routes.draw do

  # backend
  get 'admin' => redirect('admin/tours')
  namespace :admin do
    resources :tours
  end

  # manager cabinets
  namespace :cabinet do
    resources :tours
  end

  # front
  root 'tours#index'
  resources :tours, only: [:index, :show] do
    get :city, :category, on: :member
  end

end
