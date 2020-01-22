Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do


     get :form1, :new1, :new2, :new4, :new3, :new5, :exhibition, :out, :sidebar, :credit, :credit_data, :register_user_data, :logout
    

    
  end

  resources :items do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get :pay, :buy_view
      post 'pay', 'buy_view'
    end
  end

  
   

     
     

      
    
  

 
end
