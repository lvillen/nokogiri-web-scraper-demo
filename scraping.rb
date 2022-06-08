require 'nokogiri'
require 'open-uri'

html = open("https://news.ycombinator.com/")
doc = Nokogiri::HTML(html)

doc.search('.titlelink').map do |element|
  puts element.inner_text
end