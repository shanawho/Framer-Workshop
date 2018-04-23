Screen.backgroundColor = "#FFFFFF"

# CONSTANTS for masonry grid
LEFTX = 16
RIGHTX = 164+16+16
# Global variables for masonry grid
currLeftY = 32
currRightY = 32

# Insert your own Pinterest API access token but make sure you keep it secret!! Never share it with anyone else
# Instructions for how to generate your own Pinterest developer access token using Postman can be found on this page: https://developers.pinterest.com/docs/api/overview/
accessToken = ""

# Makes an API call
fetchRequest = (request) ->
	return Utils.domLoadJSONSync(request)

# Make a GET request for the pins on a specific board
# takes in 1 argument, boardIdentifier
# boardIdentifier can be a string, ("username/boardname") or a boardId ("129483894568023974")
getPinsFromBoard = (boardIdentifier) ->
	pinRequest = "https://api.pinterest.com/v1/boards/" + boardIdentifier + "/pins/?access_token=" + accessToken + "&fields=id%2Cimage"
	pinData = fetchRequest(pinRequest)
	return pinData

buildFeed = (json) ->
	# Builds a masonry feed
	
	# loop through the data and grab the object
	# where pin gives me an Object
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

# format your board ID as {username}/{boardname}
response = getPinsFromBoard("shanahu/chair")
buildFeed(response)