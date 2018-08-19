#!/usr/bin/env ruby
require 'slovnik_seznam_cz/translator'

translator = SlovnikSeznamCz::Translator.new(ARGV[0])
translations = translator.translate(ARGV[1])

translations.each do |translation|
  line = translation.join(', ')
  puts(line)
end
