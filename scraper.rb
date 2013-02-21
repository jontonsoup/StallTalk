require 'open-uri'
require 'nokogiri'

empty = 0
1000.times do |id|
	doc = Nokogiri::HTML(open("http://www.stalltalk.info/poopstations/#{id}", "User-Agent" => "Mozilla/5.0 (iPhone; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B179 Safari/7534.48.3"))

	puts "#{id}\n"

	if doc.css('li')[0].text.include? 'leave your mark!'
		puts "found #{id}\n"
		empty = empty + 1
	end
end

puts "Empty: #{empty}"