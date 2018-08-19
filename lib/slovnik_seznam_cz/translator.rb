require 'nokogiri'
require 'set'
require 'slovnik_seznam_cz/loader'

module SlovnikSeznamCz
  class Translator
    def initialize(language)
      @language = language
    end

    def translate(word)
      Loader.load(@language, word) do |file|
        doc = Nokogiri::HTML(file)
        as = doc.css('#fastMeanings a')

        translations = []
        as.each do |a|
          translation = a.text
          translations << translation unless translations.include?(translation)
        end

        translations
      end
    end
  end
end