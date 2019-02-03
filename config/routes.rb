Rails.application.routes.draw do
  
  get 'messages/index'
  get 'conversations/index'
  get 'conversations/ajax_call'
  devise_for :views
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  devise_scope :user do
  	get 'signup', to: 'devise/registrations#new'
  end
  
  devise_scope :user do
  	# get 'login', to: 'devise/sessions#new'
  	root to: "devise/sessions#new"
  end

  # config/routes.rb
  resources :conversations, only: [:index, :create] do
  	resources :messages, only: [:index, :create] do 
      collection do
        get "user_messages"
      end
    end
  end

end
