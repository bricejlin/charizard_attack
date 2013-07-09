module Levels

	def prompt
		puts
		print "    > "
	end

	def die(why)
		puts
		puts "    #{why} #{@quips[rand(@quips.length)]}"
		puts
		Process.exit(1)
	end

	def home_text
		puts <<-TEXT
    You wake up to the smell of smoke in your room. Jolting up from your bed, you 
    look around the room and see a heavy cloud of smoke covering your ceiling. There
    are piercing sounds of screaming outside, coupled with terrorizing roars and howls.

		TEXT
	end

	def town_text
		puts <<-TEXT
    You jump out of bed and run outside to see what's going on outside. To your horror,
    your neighbor's house is on fire. A giant shadow swoops over your head. You look up
    to find a giant Charizard flying around spitting fireballs towards the nearby homes.
    Several more Charizards can be seen from afar, wrecking havoc where they are. Across
    town, you see Professor Oak running into his lab. Directly to your right, you see a
    Charizard make eye contact and begin flying towards you. There's a garden hose at the
    front of your house, right behind you.

		TEXT
	end

	def lab_door_text
		puts <<-TEXT
    You sprint with all your might across the street towards Professor Oak's lab. As soon
    as you get there, you reach for the knob and turn, but it won't budge. You see a
    number keypad just above the doorknob with a legend: "re=1 go=2 si=3 bl=4"

		TEXT
	end

	def lab_text
		puts <<-TEXT
    The door deeps and you quickly rush in. As soon as you enter, you slam the door behind 
    you. "What the hell is going on out there?!" you ask. "I don't know, #{@name}. This
    kind of thing is incredible! Charizards are not known to be vicious like this! Something 
    strange is going on."

    Professor Oak nervously shuffles through his files. His face suddenly turns blue. 
    "They took it! It's gone! This was a planned attack!" "Wait, what's gone? Who's they?" 
    Professor Oak paces back and forth anxiously. "#{@name}, you must help me. Here are the
    last three pokemon I have left. 

    TEXT
  end
end

