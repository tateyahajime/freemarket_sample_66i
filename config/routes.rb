Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  get 'items/:id/buy_view' => 'items#buy_view'
  post '/items/:id/pay' => 'items#pay'
  get '/items/:id/pay' => 'items#pay'
  resources :mercaris do
    collection do


     get :form1, :new1, :new2, :new4, :new3, :new5, :exhibition, :out, :sidebar, :credit, :credit_data, :register_user_data, :logout
    

    end
  end

  resources :items do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
    end
  end
 
end
