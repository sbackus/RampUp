stock_prices = [["google",100,94],["kayak",56,96],["microsoft",89,89],["intel",76,75],["apple",203,207]]

def get_price_difference(yesterdays_price, todays_price)
	return yesterdays_price - todays_price
end

def get_buy_sell_recomendation(stock)
	name = stock[0]
	yesterdays_price = stock[1]
	todays_price = stock[2]
	
	puts name + " changed by " + get_price_difference(todays_price,yesterdays_price).to_s
	if todays_price > yesterdays_price
		puts "buy " + name
	elsif todays_price < yesterdays_price
		puts "sell " + name 
	else
		puts "hold " + name
	end
	puts ""
end

stock_prices.each do |stock|
	get_buy_sell_recomendation(stock)	
end










