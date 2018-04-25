# For Loops

# Global variables that exist in all scopes in this project
startX = 32
currX = startX
currY = 32
bg = new BackgroundLayer
scroll = new ScrollComponent
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false
	
# Helper function for creating a topic. 
# Takes in three arguments, the x position, the y position, and the current number from for loop
# We will do all the topic set up in here and just return the topic layer at the end.
createTopic = (x, y, num) ->
	topic = new Layer
		parent: scroll.content
		width: 100
		height: 100
		x: x
		y: y
		borderRadius: 8
		backgroundColor: Utils.randomColor()
		# add an image from the path in our Framer project folder
		image: "images/home/"+num+".jpg"
	topic.states.selected =
		opacity: .2
	topic.onTap (event, layer) ->
		layer.animate("selected")
	return topic

for i in [1..18] #shortcut for [1,2,3,etc, including 18]
	topic = createTopic(currX, currY, i)
	currX = currX + topic.width + 10
	# the modulo "%" sign means when i is divided by 3, return the remainder
	#
	if i%3 is 0
		# create a new row
		currY = currY + topic.height + 10
		# reset x to the beginning
		currX = startX
	