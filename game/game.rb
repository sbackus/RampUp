require "Hasu"

Hasu.load 'kayak.rb'
Hasu.load 'rock.rb'

class Game < Hasu::Window
	WIDTH = 600
	HEIGHT = 400

	def initialize
		super(WIDTH,HEIGHT,false)
	end

	def reset
		@background = Gosu::Image.new(self,"whitewater.jpg",true)
		@kayak = Kayak.new(self)
		# @rock = Rock.new(self,@kayak)
		@rocks = []
		@game_over = false
	end

	def update
		unless @game_over
			if (rand < 0.015)
				@rocks << Rock.new(self)
			end
			@rocks.each do |rock|
				rock.update
				if collision?(rock,@kayak)
					@game_over = true
				end
			end
			@kayak.update
		end
	end	

	def draw
		unless @game_over
			@background.draw(0,0,-1)
			@kayak.draw
			@rocks.each do |rock|
				rock.draw
			end
		end
	end

	def collision?(thing1,thing2)
		thing1.x1 < thing2.x2 &&
		thing1.x2 > thing2.x1 &&
		thing1.y1 < thing2.y2 && 
		thing1.y2 > thing2.y1 
	end
end

Game.run