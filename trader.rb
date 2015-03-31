class Stock
	def initialize(name, yesterdays_price, todays_price)
		@name = name
		@yesterdays_price = yesterdays_price
		@todays_price = todays_price
	end

	def get_price_difference
		return @yesterdays_price - @todays_price
	end

	def get_buy_sell_recomendation

		puts @name + " changed by " + get_price_difference.to_s
		if @todays_price > @yesterdays_price
			puts "buy " + @name
		elsif @todays_price < @yesterdays_price
			puts "sell " + @name 
		else
			puts "hold " + @name
		end
		puts ""
	end
end




stock_prices = [Stock.new("google",100,94),Stock.new("kayak",56,96),Stock.new("microsoft",89,89),Stock.new("intel",76,75),Stock.new("apple",203,207)]
stock_prices.each do |stock|
	stock.get_buy_sell_recomendation	
end










