class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @title = "Welcome to Rails 4 Playground"
  end
end