Rails.application.routes.draw do

  resources :rooms do
    resources :messages
  end
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'welcome#index'
  
end
