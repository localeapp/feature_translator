class Feature < ActiveRecord::Base
  belongs_to :category
  validates_uniqueness_of :key
  validates_format_of :key, :with => /^\w+$/

  def name(target_locale=nil)
    I18n.t "models.feature.data.key.#{key}", :locale => target_locale
  end
end
