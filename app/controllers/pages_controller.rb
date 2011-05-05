class PagesController < ApplicationController
  before_filter :set_locales, :get_checked_features

  def index
    @categories = Category.all
    @current_category = @categories.first || Category.new

    respond_to do |format|
      format.html { render 'index' }
      format.js   { render :partial => 'preview'}
    end
  end

private
  def set_locales
    I18n.locale = params[:current_locale] ? params[:current_locale].to_sym : :en
    @target_locale = params[:target_locale] ? params[:target_locale].to_sym : :fr
  end

  def get_checked_features
    @checked_features = Feature.where('id IN (?)', params[:features].keys) if params[:features]
    @checked_features ||= []
  end
end