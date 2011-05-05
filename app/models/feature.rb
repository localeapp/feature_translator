class Feature < ActiveRecord::Base
  belongs_to :category

  def name(target_locale=nil)
    I18n.t "models.feature.data.key.#{key}", :locale => target_locale
  end
end
