Rails4Playground::Application.routes.draw do
  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }
  devise_scope :user do
    get '/login'          => 'devise/sessions#new',     :as => 'new_user_session'
    get '/logout'         => 'sessions#destroy', :as => 'destroy_user_session'
    get '/signup'          => 'devise/registrations#new',     :as => 'new_user_registration'
    get '/password/reset' => 'devise/passwords#new',    :as => 'new_user_password'
  end

  get 'dashboard' => 'dashboard#index', :as => 'user_root'
  get 'dashboard' => 'dashboard#index', :as => 'dashboard'

  root :to => 'home#index'
end