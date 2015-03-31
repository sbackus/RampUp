class Car
	attr_reader :doors, :manual, :speed

	def initialize(manual, doors=4)
		@manual = manual
		@doors = doors 
		@speed = 10
	end

	def accelerate
		@speed = @speed + 1
	end
end

my_car = Car.new(true, 2)
Lauras_car = Car.new(false)
van = Car.new(false)

puts Lauras_car.doors
my_car.accelerate
puts my_car.accelerate
puts my_car.speed
