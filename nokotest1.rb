require 'nokogiri'
require 'open-uri'

url = "https://creditcards.chase.com/a1/southwest/50kPremierNonAEP?CELL=6RRW&kwdID=OEvnVq4A_dc&adgrpID=74893584746&jp_cmp=cc%2FSWA+-+Brand+-+Exact%2Fsea%2FOEvnVq4A%2FChase+Southwest+Card"

data = Nokogiri::HTML(open(url))

puts data.at_css(".mainContentbullets").first_element_child.text.strip
# data.at_css("main").first_element_child.text.strip
