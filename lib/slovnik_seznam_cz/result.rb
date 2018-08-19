require 'nokogiri'

module SlovnikSeznamCz
  class Result
    def initialize(file)
      @doc = Nokogiri::HTML(file)
    end

    def translations
      as = @doc.css('#fastMeanings a')
      as.each do |a|
        yield a.text
      end
    end
  end
end