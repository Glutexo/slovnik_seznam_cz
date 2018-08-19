require 'nokogiri'

module SlovnikSeznamCz
  class Result
    def initialize(file)
      @doc = Nokogiri::HTML(file)
    end

    def translations
      elements = @doc.css('#fastMeanings').children
      words = []
      elements.each do |element|
        case element.name
        when 'a'
          words << element.text
        when 'br'
          yield words
          words = []
        else
          next
        end
      end
    end
  end
end