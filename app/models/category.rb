class Category < ActiveRecord::Base
  has_many :features
  validates_uniqueness_of :key
  validates_format_of :key, :with => /^\w+$/

  def name(target_locale=nil)
    I18n.t "models.category.data.key.#{key}", :locale => target_locale
  end
end
