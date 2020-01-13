Rails.application.routes.draw do
  root to: 'mercaris#index'
  root to: 'mercari#new'
  # get 'mercaris', to: 'mercaris#form'
  resources :mercaris do
    collection do
      get :new, :form1, :new2, :new4, :new3, :new5
    end
  end
end
