WetBoewRubyRails::Application.routes.draw do
  root :to => "application#index"
  match "/:action", :to => "application"
end
