class ApplicationController < ActionController::Base
  # protect_from_forgery
  layout :choose_layout

  def choose_layout
    devise_controller? ? "public" : "application"
  end
end