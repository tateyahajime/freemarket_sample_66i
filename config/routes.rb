Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  # root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :cards do
    collection do
      get  '/:id/buy_view' => 'cards#buy_view'
      post  '/:id/pay' => 'cards#pay'
      get  '/:id/pay' => 'cards#pay'
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
      get :mypage
    end
  end

end
 
