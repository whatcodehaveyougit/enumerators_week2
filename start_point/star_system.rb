class StarSystem
  attr_reader :name, :planets

def initialize(name, planets)
	@name = name
	@planets = planets
end
    
    def planet_names
    	planet_names = @planets.map do |planet| 
    	planet.name	
    	end
    end	

    def get_planet_by_name(planet_name)
    	found_planet = @planets.find { |planet|  planet.name == planet_name}
    end	

    def get_largest_planet
    	found_planet = @planets.max {|largest_planet, current_planet| largest_planet.diameter <=> current_planet.diameter}
    end

    def get_smallest_planet
    	found_planet = @planets.min {|smallest_planet, current_planet| smallest_planet.diameter <=> current_planet.diameter}
    end

    def get_planets_with_no_moons
    	found_planets = @planets.find_all { |planet| planet.number_of_moons == 0 }
    end

    def get_planets_with_more_moons(number_of_moons)
    		found_planets = @planets.find_all { |planet| planet.number_of_moons > number_of_moons }
    		planet_names = found_planets.map {|planet| planet.name}
    end

    def get_number_of_planets_closer_than(distance_from_sun)
    	found_planets = @planets.find_all { |planet| planet.distance_from_sun <= distance_from_sun }
    	found_planets.size
    end	

    def get_total_number_of_moons
    	planet_moons = @planets.map { |planet| planet.number_of_moons }
    	sum_of_moons = planet_moons.reduce {|running_total, current_planet| running_total + current_planet }
    end	

    # def get_planet_names_sorted_by_increasing_distance_from_sun
    # 	planets_in_order = @planets.sort {|a,b| a.distance_from_sun <=> b.distance_from_sun}
    # 	names_of_planets_in_order = planets_in_order.map {|planet| planet.name}
    # end

def get_planet_names_sorted_by_increasing_distance_from_sun
    	planets_in_order = @planets.sort_by {|a| a.distance_from_sun }
    	names_of_planets_in_order = planets_in_order.map {|planet| planet.name}
    end

  #   def get_planet_names_sorted_by_size_decreasing
  #   	planets_in_size_order = @planets.sort { |a, b| b.diameter <=> a.diameter}
		# names_of_planets_in_size_order = planets_in_size_order.map {|planet| planet.name}    
  #   end	

    def get_planet_names_sorted_by_size_decreasing
    	planets_in_size_order = @planets.sort_by { |a| -1*a.diameter }
    	# planets_in_size_order.reverse!
		names_of_planets_in_size_order = planets_in_size_order.map {|planet| planet.name}    
    end	

end