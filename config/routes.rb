Rails.application.routes.draw do
  get 'requestinvs/index'
  get 'requestinvs/show'
  get 'requestinvs/new'
  get 'requestinvs/borrowed'
  get 'welcome/about'
  get 'welcome/studenthome'
  get 'welcome/sponsorprojectsubmission'
  get 'welcome/inventorymanagement'
  get '/welcome/forum', to: redirect('https://ecencapstone.wixsite.com/capstoneforum')
  resources :items
  get '/items/:id', to: 'items#show'
  get '/items/:id/issue', to: 'items#issue', as: 'issue_item'
  get '/items/:id/checkout', to: 'items#checkout', as: 'checkout_item'
  get '/items/:id/return', to: 'items#return', as: 'return_item'
  get '/items/:id/returning', to: 'items#returning', as: 'returning_item'
  resources :requestinvs
  get '/requestinvs/:id', to: 'requestinvs#show'
  match '/auth/:provider/callback', :to => 'auth#callback', :via => [:get, :post]
  get 'auth/signout'
  get 'auth/failure'
  namespace :api do
    namespace :v1 do
      resources :formresponses
    end
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Add route for OmniAuth callback

end
