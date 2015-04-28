class Rock

	def initialize(window)
		@window = window

		@image_path = ["Rock3.png","Rock4.png","Rock3.png"].sample
		@image = Gosu::Image.new(@window,@image_path,false)
		@width = @image.width
		@height = @image.height
		@x = rand(0..Game::WIDTH)
		@y = 0
		@z = 0
	end

	def update
		# move down
		@y += 1
	end

	def draw
		@image.draw(@x,@y,@z)
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