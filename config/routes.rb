Rails.application.routes.draw do
  devise_for :users
  root to: 'mercaris#index'
  root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do
      get :new, :form1,:new1, :new2, :new3, :new4, :new5, :out
    end
  end
  resources :items
end
