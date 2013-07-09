class Pokemon
	attr_accessor :hit_points, :attack_points, :defense_points, :name

	def initialize(name)
		@name = name
		@hit_points = 100
		@attack_points = 5
		@defense_points = 3
	end
end