class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    render :layout => 'wp-pa'
  end
  
  def onecol
    render :layout => '1col'
  end

  def twocol
    render :layout => '2col'
  end

  def threecol
    render :layout => '3col'
  end
end
