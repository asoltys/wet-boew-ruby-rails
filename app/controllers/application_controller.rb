class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

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

  def parse_lang_parameter(url)
    return url unless params[:lang]

    if I18n.available_locales.include?(params[:lang].to_sym)
      session[:language] = params[:lang]
    end

    url = url.sub(/\?.*/, '')

    query_string = request.query_string.sub(/&lang(\=[^&]*)?(?=&|$)|^lang(\=[^&]*)?(&|$)/, '')
    url = url + "?#{query_string}" unless query_string.empty?
    return url
  end

  def set_locale
    url = parse_lang_parameter(request.url) 
      
    if request.get? && url != request.url
      head :moved_permanently, :location => url 
    end

    I18n.locale = session[:language]
  end

end
