class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def home
    render :layout => "3col"
  end
end
