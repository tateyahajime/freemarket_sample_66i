Rails.application.routes.draw do
  root to: 'mercaris#index'
  root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do
      get :new, :form1
    end
  end
end
