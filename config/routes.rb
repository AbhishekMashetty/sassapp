Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
  	resource :profile
  end
  root to: 'pages#home'
  get 'about',to: 'pages#about'
  get 'new' ,to: 'contacts#new'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :contacts,only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
