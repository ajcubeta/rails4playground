class HomeController < ApplicationController
  def index
    @title = "This is a test"
  end

  def current
    @title = "Current page for this application"
  end
end