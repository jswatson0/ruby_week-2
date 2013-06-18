class Airplane
	attr_accessor :city, :capacity, :destination

	@@city_to_airplane_hash = {}

	def initialize(city_of_origin,capacity)
		if @@city_to_airplane_hash.include?(city_of_origin)
			raise ArgumentError, "duplicate detected"
		else
			@city = city_of_origin
			@capacity = capacity
			@@city_to_airplane_hash[city_of_origin] = capacity
		end
	end

	def self.airplanes
		puts @@city_to_airplane_hash
	end

end