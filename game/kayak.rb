class Kayak

	attr_accessor :x,:y,:speed,:height

	def initialize(window)
		@window = window
		@scale_factor = 0.75
		@image = Gosu::Image.new(@window,"kayak.png",false)
		@width = @image.width * @scale_factor
		@height = @image.height * @scale_factor
		@x = Game::WIDTH/2 - @width/2
		@y = Game::HEIGHT-@height
		@speed = 5
	end

	def update
		if @window.button_down?(Gosu::KbLeft) && @x > 0
			@x -= @speed
		end
		if @window.button_down?(Gosu::KbRight) && @x < Game::WIDTH - @width
			@x += @speed
		end
	end

	def draw
		@image.draw(@x,@y,0,@scale_factor,@scale_factor)
	end

	def x1
		@x
	end

	def x2
		@x + @width
	end

	def y1
		@y
	end

	def y2
		@y + @height
	end

end