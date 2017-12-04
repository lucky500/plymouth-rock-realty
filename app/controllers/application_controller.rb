class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:new, :edit]
  protect_from_forgery with: :exception
end
