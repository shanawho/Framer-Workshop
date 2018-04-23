layerA = new Layer x: 0
layerB = new Layer x: 220
layerC = new Layer x: 440
 
layers = [layerA, layerB, layerC]


# This will only make the last one turn blue
for layer in layers
	layer.onClick ->
		layer.backgroundColor = "blue"
		# "layer" in the line above is left referencing "layerC" after the for loops runs and before any click happens
	

# # One way to make it work:
# # Uncomment (Highlight and hit Cmd+/) the code block below to test
# for layer in layers
# 	layer.onClick ->
# 		this.backgroundColor = "blue"
# 		# "this" will always refer to the layer being clicked


# # Another way to make it work:
# # Uncomment the code block below to test
# for layer in layers
# 	layer.onClick (event, layer)->
# 		layer.backgroundColor = "blue"
# 		# "layer" in the line above will always refer to the layer being passed in as an argument, thus the layer being clicked


