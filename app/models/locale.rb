class Locale
  attr_reader :code

  def initialize(code)
    @code = code
  end

  def name(target_locale=nil)
    I18n.t "locales.#{@code}", :locale => target_locale
  end

  def self.all
    I18n.available_locales.map { |l| Locale.new(l) }
  end
end