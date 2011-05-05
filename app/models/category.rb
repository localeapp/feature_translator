class Category < ActiveRecord::Base
  has_many :features

  def name(target_locale=nil)
    I18n.t "models.category.data.key.#{key}", :locale => target_locale
  end
end
