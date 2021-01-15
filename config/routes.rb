Rails.application.routes.draw do

  resources :rooms do
    resources :messages
  end
  devise_for :users
  root 'welcome#index'
  
end
