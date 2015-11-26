Rails.application.routes.draw do
  root 'drinklists#index'

  get 'drinklists/edit_list', to: 'drinklists#edit_list', as: 'edit_list'
  post 'drinklist/edit_list', to: 'drinklists#save_list', as: 'save_list'
  resources :drinklists
end
