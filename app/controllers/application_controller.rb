class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  layout :set_layout
  
  private
    def set_layout
      devise_controller? ? 'devise' : 'application'
    end

end
