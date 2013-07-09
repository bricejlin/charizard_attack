require './levels'
require './PokemonClass'
include Levels

class Game
	def initialize(start)
		@quips = [
			"You died. Noob.",
			"Nice job, you lost.",
			"Looooooserrrrr."
		]
		@start = start
	end

	def play
		next_room = @start

		while true
			puts "---------"
			room = method(next_room)
			next_room = room.call
		end
	end

	def enter_name
		puts "    Before we begin, what's your name?"
		prompt; @name = gets.chomp
		return :home
	end

	def home
		home_text

		puts "    Do you run out to see what's going on or stay inside and hope the problem goes away?"

		prompt; move = gets.chomp

		if move.include? "run"
			return :town
		else
			die("Your house catches on fire and collapses on you.")
		end
	end

	def town
		town_text

		puts "    Do you try stand your ground and fight the Charizard or run to the lab?"

		prompt; move = gets.chomp

		if move.include? "lab" or move.include? "run"
			return :lab_door
		elsif move.include? "stand" or move.include? "fight"
			die("Charizard eats the hose, including the hand that was holding it. Then the rest of you.")
		else
			puts
			puts "    Don't understand."
			return :town
		end
	end

	def lab_door
		lab_door_text
		print "    <keypad>: "; code = gets.chomp
		attempts = 1

		while code != "1423" && attempts < 4
		print "    <keypad>: "; code = gets.chomp
		end

		if code == "1423"
			return :lab
		else
			die("As you keep hoping for the door to magically unlock, you feel the back of your neck
				   getting hotter and hotter. You turn around to see a giant Charizard staring straight
				   back at you. He eats you.")
		end
	end

	def lab
		lab_text
		pokemon_list = {"blue"=>"Squirtle", "green"=>"Bulbasaur", "red"=>"Charmander"}
		puts "    Professor Oak brings out 3 pokeballs: blue, green and red. Which one do you pick?"
	
		prompt; choice = gets.chomp

		puts
		puts "    Congratulations! You have chosen #{pokemon_list[choice]}!"

		pokemon = Pokemon.new("#{pokemon_list[choice]}")
		
		puts "    #{pokemon.name}'s stats are: HP: #{pokemon.hit_points}, Attack: #{pokemon.attack_points}"
		puts "    Too be continued..."
		Process.exit(0)
	end
end

a_game = Game.new(:lab).play

