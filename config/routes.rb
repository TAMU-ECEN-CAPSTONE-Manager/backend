Rails.application.routes.draw do
  get 'welcome/about'
  get 'welcome/studenthome'
  resources :items
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
