require 'nokogiri'
require 'open-uri'


class CryptoPrices

	@@arr = []
	@@arr2 = []

	def initialize

	    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all"))
		page.css("a.currency-name-container").each do |y|
			y  = y.text
			@@arr << y
	    end

	    page.css("a.price").each do |x|
			x = [x.text]
			@@arr2 << x
		end
	end

	def perform 

		final = Hash[@@arr.zip(@@arr2)]

		return final
	end
end
