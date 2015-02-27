#!/usr/bin/ruby
# Name: stockQuote.rb
# Author: Ty Lim
# Description: Simple example of using the yahoofinance gem to grab stock quotes.

require 'yahoofinance'

class Stockquote
	def enterQuote
		puts "Enter Stock Quote: "
		stock = gets 
		stock = stock.chomp
	end

	def getQuote(stock)
		typeOfQuote = YahooFinance::RealTimeQuote
		puts "Retrieving real-time stock quote for " + stock

		stockQuote = YahooFinance::get_quotes(typeOfQuote, stock) do |qt|
		puts "Stock Info: #{qt.symbol}"
			puts qt.to_s
		end

		stockQuote.each do |line|
		puts line	
		end
	end
end

quote = Stockquote.new()
stock = quote.enterQuote
quote.getQuote(stock)
