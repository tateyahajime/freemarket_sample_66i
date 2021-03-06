Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  root to: 'items#index'
  resources :signup do
    collection do
     
      get :form1, :new1, :new2, :new4, :new3, :new5,:register_user_data
      post :new1, :new2, :new3, :new4, :new5
    end
  end
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :cards do
    collection do
      get  '/:id/buy_view' => 'cards#buy_view', as: :buy_view
      post  '/:id/pay' => 'cards#pay'
      get  '/:id/pay' => 'cards#pay'
      get :pay_destroy
    end
  end

  resources :mercaris do
    collection do

     get :form1, :new1, :new2, :new4, :new3, :new5, :exhibition, :out, :buy, :sidebar, :credit, :credit_data, :register_user_data, :mypage, :logout
    end 
    

  end

  resources :items do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'search'
    end
  end

  resources :mypages do
    member do
      get :mypage
      get :mypage_edit
      get :logout
      get :register_user_data
      get :credit
      get :credit_data
      
    end
  end

 
end
 
