class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  helper_method :categories

  private

  def categories
    @categories = Category.all if !defined? @categories
    @categories
  end
end
