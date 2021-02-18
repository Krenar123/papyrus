Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', confirmations: 'users/confirmations', sessions: 'users/sessions', passwords: 'users/passwords'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home', to: 'pages#home'
  root 'pages#home'

  get '/management/:id', to: 'users#show', as: :user_managment
  get '/creating-note', to: 'notes#new', as: :new_note
  resources :notes, only: [:create, :update]
end
