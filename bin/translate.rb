#!/usr/bin/env ruby
require 'slovnik_seznam_cz/translator'

translator = SlovnikSeznamCz::Translator.new(ARGV[0])
translations = translator.translate(ARGV[1])

printed = []
translations.each do |translation|
  next if printed.include?(translation)
  puts(translation)
  printed << translation
end
