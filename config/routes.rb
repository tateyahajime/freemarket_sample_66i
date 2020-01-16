Rails.application.routes.draw do
  devise_for :users
  root to: 'mercaris#index'
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do
     
      get :form1, :new1_data, :new2_phone, :new4_credit, :new3_address, :new5_last, :exhibition, :out, :buy, :sidebar, :credit, :credit_data

      
    end
  end
  resources :items
end
