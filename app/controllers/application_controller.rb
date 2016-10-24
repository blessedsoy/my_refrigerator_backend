class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  respond_to :json, :html
  # before_action :authenticate_user!
  # include ActionController::MimeResponds
end

