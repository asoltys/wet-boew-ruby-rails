class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    render :layout => 'wp-pa'
  end
  
  def home
    render :layout => '3col'
  end
end
