require 'slovnik_seznam_cz/loader'
require 'slovnik_seznam_cz/result'

module SlovnikSeznamCz
  class Translator
    def initialize(language)
      @language = language
    end

    def translate(word)
      Loader.load(@language, word) do |file|
        result = Result.new(file)
        translations = []
        result.translations do |translation|
          translations << translation
        end

        translations
      end
    end
  end
end