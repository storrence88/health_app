Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  devise_for :users, controllers: { registrations: 'registrations' }, 
    path: '', path_names: { sign_in: 'login', sign_up: 'signup' }
  
  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
    resource :users
  end

  root 'welcome#index'
end
