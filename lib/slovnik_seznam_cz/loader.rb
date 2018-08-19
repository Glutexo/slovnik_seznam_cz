require 'open-uri'

module SlovnikSeznamCz
  class Loader
    BASE_URI = URI('https://slovnik.seznam.cz/')

    class << self
      def load(language, word)
        uri = BASE_URI.clone
        uri.path = "/#{language}/"
        uri.query = URI.encode_www_form(q: word)

        open(uri.to_s) do |file|
          yield(file)
        end
      end
    end
  end
end