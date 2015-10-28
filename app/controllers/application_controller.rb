class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :categories

  def categories
    if !defined? @categories
      @categories = Category.all.order(:name)
      #POSTGRESQL specific below
      #@categories = Category.all.order('LOWER(name)')
    end
    @categories
  end
end
