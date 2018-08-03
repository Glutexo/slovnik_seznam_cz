require 'open-uri'
require 'nokogiri'
require 'set'

module SlovnikSeznamCz
  class Translator
    BASE_URI = URI('https://slovnik.seznam.cz/')

    def initialize(language)
      @language = language
    end

    def translate(word)
      uri = BASE_URI.clone
      uri.path = "/#{@language}/"
      uri.query = URI.encode_www_form(q: word)

      open(uri.to_s) do |file|
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