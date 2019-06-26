Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artigos do
  	resources :comentarios
  end
  
  root 'welcome#index'
end
