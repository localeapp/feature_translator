class PagesController < ApplicationController
  before_filter :set_locales

  def index
    
    if params[:features]
      @checked_features = Feature.where('id IN (?)', params[:features].keys)
    else
      @checked_features = []
    end

    @categories = Category.all
    @current_category = @categories.first || Category.new
  end

  def translate
    index
    
    render 'index'
  end

private
  def set_locales
    I18n.locale = params[:current_locale] ? params[:current_locale].to_sym : :en
    @target_locale = params[:target_locale] ? params[:target_locale].to_sym : :fr
  end
end
