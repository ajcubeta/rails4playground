class HomeController < ApplicationController
  # include Home
  layout "public"

  def index
    @title = "Rails 4 Playground"
  end

  def current
    @title = "Current page for this application"
  end
end