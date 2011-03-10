class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def home
    render :layout => "2col-theme-clf2-nsi2-eng"
  end
end
