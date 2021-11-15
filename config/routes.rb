Rails.application.routes.draw do
  get 'welcome/about'
  get 'welcome/studenthome'
  get 'welcome/sponsorprojectsubmission'
  resources :items
  get '/items/:id', to: 'items#show'
  get '/items/:id/issue', to: 'items#issue', as: 'issue_item'
  get '/items/:id/checkout', to: 'items#checkout', as: 'checkout_item'
  get '/items/:id/return', to: 'items#return', as: 'return_item'
  get '/items/:id/returning', to: 'items#returning', as: 'returning_item'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
