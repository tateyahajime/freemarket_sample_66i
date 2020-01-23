Rails.application.routes.draw do
  devise_for :users
  root to: 'signup#index'
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :signup do
    collection do
     
      get :form1, :new1, :new2, :new4, :new3, :new5, :exhibition, :out, :buy, :sidebar, :credit, :credit_data, :register_user_data
      post :new1, :new2, :new3, :new4, :new5
      
    end
  end
  resources :items
end
