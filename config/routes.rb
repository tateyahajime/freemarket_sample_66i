Rails.application.routes.draw do
  root to: 'mercaris#index'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do
      get :new, :form1, :new1
       
    end
  end
end
