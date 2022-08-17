# require 'HTTParty' --using HTTParty gem
# response = HTTParty.get("https://www.fantasypros.com/nfl/rankings/consensus-cheatsheets.php")
# html = response.body

# puts html

#using open-uri gem
require 'open-uri'
require 'nokogiri'
html = URI.open("https://www.cbssports.com/fantasy/football/rankings/");

doc = Nokogiri::HTML(html)
stats = doc.css("div").text

puts stats


