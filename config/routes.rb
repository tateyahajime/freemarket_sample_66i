Rails.application.routes.draw do
  devise_for :users
  root to: 'mercaris#index'
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do
     
      get :form1, :new1, :new2, :new4, :new3, :new5, :exhibition, :out, :buy, :sidebar, :credit, :credit_touroku
    end
  end
  resources :items
end
