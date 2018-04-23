# Constants
LEFTX = 16
RIGHTX = Screen.width/2 + 8

# Variables to keep track of current left and right Y positions
# We will be updating these in our for loop as we add each Pin
currLeftY = 16
currRightY = 16

bg = new BackgroundLayer

scroll = new ScrollComponent
	width: Screen.width
	height: Screen.height
	backgroundColor: "#FFF"
scroll.scrollHorizontal = false

# Helper function for creating a Pin
createPin = (x, y, c) ->
	pin = new Layer
		x: x
		y: y
		width: 164
		height: Utils.round(Utils.randomNumber(100,200))
		backgroundColor: Utils.randomColor()
		image: Utils.randomImage()
		borderRadius: 16
		parent: scroll.content
		name: "pin_"+c
	return pin

for c in [1..20]
	if c%2 is 1
		# check if it should be left column
		currX = LEFTX
		currY = currLeftY
	else
		# check if it should be right column
		currX = RIGHTX
		currY = currRightY

	# Make a new Pin in position currX, currY
	# Pass in the current count, c, so each Pin layer has a unique name
	pin = createPin(currX, currY, c)
	
	# Update our Y variables accordingly
	# So next iteration, the for loop will have the correct Y
	# We know we want to add the height of the Pin we just created
	if currX is LEFTX
		currLeftY = currLeftY + pin.height + 20
	else if currX is RIGHTX
		currRightY = currRightY + pin.height + 20
