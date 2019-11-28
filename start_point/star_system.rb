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
end