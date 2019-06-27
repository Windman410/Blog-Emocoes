Rails.application.routes.draw do
  get 'admins/new'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :admins
    get    'sign_in'   => 'sessions#new'
    post   'sign_in'   => 'sessions#create'
    delete 'sign_out'  => 'sessions#destroy'
  

  resources :artigos do
  	resources :comentarios
  end
  
  root 'welcome#index'
end
