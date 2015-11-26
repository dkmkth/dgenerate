Rails.application.routes.draw do
  root 'drinklists#index'

  get 'edit', to: 'drinklists#edit_list', as: 'edit_list'
  post 'edit', to: 'drinklists#save_list', as: 'save_list'
  resources :drinklists
end
