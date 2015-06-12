class HomeController < ApplicationController
  def index
    session[:last_path] = '/'
  end

end
