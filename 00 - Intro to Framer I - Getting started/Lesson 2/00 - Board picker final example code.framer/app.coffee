Framer.Defaults.Animation.time = 0.5

# Import file "00 - Board picker"
# I've renamed this variable from the default 'sketch' to 's' just because it's shorter
s = Framer.Importer.load("imported/00%20-%20Board%20picker@2x", scale: 1)

s.board_picker.states.show =
	y: 0

# Below is another way to define states. This syntax makes more sense when you want to define more than one state at once. Here, we've defined a state called "hide" that we'll call instead of "default" but functionally, they work the same
# s.board_picker.states =
# 	show:
# 		y: 0
# 		options:
# 			time:.2
# 	hide:
# 		y: Screen.height
# 		options:
# 			time: 2

# Show the board picker when I tap the save button
s.save_button.onTap (event, layer) ->
	s.board_picker.animate("show")

# Hide the board picker when I tap the exit X
s.exit.onTap (event, layer) ->
	s.board_picker.animate("default")

# Hide the board picker when I tap on the Sweaters layer
s.sweaters.onTap (event, layer) ->
	s.board_picker.animate("default")
	



