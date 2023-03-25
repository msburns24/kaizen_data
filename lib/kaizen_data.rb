class KaizenData
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require "kaizen_data/translator"