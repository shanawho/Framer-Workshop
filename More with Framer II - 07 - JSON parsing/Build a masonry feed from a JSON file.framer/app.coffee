bg = new BackgroundLayer

# CONSTANTS for masonry grid
LEFTX = 16
RIGHTX = 164+16+16
# Global variables for masonry grid
currLeftY = 32
currRightY = 32

# Framer has a utility that helps import our json file that we put in the data folder of this Framer project
json = Utils.domLoadJSONSync("data/pins.json")

# Build a masonry feed from the json file in the data folder in this Framer project
# The logic for the masonry feed part is built off of a past lesson from Day 3
# This json object contains an array of 4 pins

# loop through the array, json.data
# pin gives me an Object
# and i gives me the index of that object
for pin, i in json.data
	imageUrl =  pin.image.original.url
	imageHeight = pin.image.original.height
	imageWidth = pin.image.original.width
	
	if i%2 is 0
		currX = LEFTX
		currY = currLeftY
	else
		currX = RIGHTX
		currY = currRightY
	
	layer = new Layer
		x: currX
		y: currY
		image: imageUrl
		width: 164
		height: (imageHeight/imageWidth)*164
		
	if currX is LEFTX
		currLeftY = currLeftY + layer.height + 32
	else
		currRightY = currRightY + layer.height + 32