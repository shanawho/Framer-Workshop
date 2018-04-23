# Import file "headerscroll"
s = Framer.Importer.load("imported/headerscroll@2x", scale: 1)
bg = new BackgroundLayer

# Make the pinfeed scroll
scroll = ScrollComponent.wrap(s.pinfeed)
scroll.scrollHorizontal = false

# Set up default opacity for the closeup header
s.closeup_header.opacity = 0
s.closeup_header.y = s.status_bar.height

# Instantiate a new global variable that at first is undefined
tappedPin = undefined


for pinLayer in s.pinfeed.children
	pinLayer.onTap (event, layer) ->
		# Keep track of this Pin for when we want to go back to it
		tappedPin = layer
		
		# Copy the layer so it's easier to work with and you keep the reference to the original Pin in the feed
		# This copy will be added to the top of your Layers list, with no parent
		copy = layer.copy()
	
		# Make sure the copy is positioned relative to the Screen, not the pinfeed (its parent)
		copy.x = layer.screenFrame.x
		copy.y = layer.screenFrame.y
	
		copy.states.big =
			width: Screen.width-32
			height: (layer.height/layer.width)*(Screen.width-32) #proportionally calculated
			x: 16
			y: s.closeup_header.height + s.status_bar.height
			parent: s.closeup 
			# After the animation to this state, change the parent. 
			# Parent is not an animatable property
		copy.animate("big")
		
		s.pinfeed.states.fade = 
			opacity: 0
			options:
				time: 0.2
		s.pinfeed.animate("fade")
		
		# After the pinfeed animates away, make it not visible so you can't tap on it
		s.pinfeed.onAnimationEnd (event, layer) ->
			if s.pinfeed.states.current.name is "fade"
				layer.visible = false
				# Turn off this event listener so it doesn't trigger for other animation events
				layer.off(Events.AnimationEnd) 
	
		s.closeup_header.states.show =
			opacity: 1
		s.closeup_header.animate("show")


s.back.onTap (event, layer) ->
	# find the pin from the s.closeup layer so that it works dynamically
	# If you print s.closeup.children you will see that its the third child
	# Arrays are zero-indexed, so we find it with index 2
	pin = s.closeup.children[2]
	
	pin.states.backToGrid = 
		x: tappedPin.screenFrame.x # relative to the Screen, not the parent
		y: tappedPin.screenFrame.y  # relative to the Screen, not the parent
		width: tappedPin.width
		height: tappedPin.height
	
	pin.animate("backToGrid")
	
	# After the animation, destroy the pin copy layer
	pin.onAnimationEnd (event, layer) ->
		layer.destroy()

	# make pinfeed tappable again
	s.pinfeed.visible = true
	
	# After the Pin animates, animate the feed back in
	Utils.delay 0.5, ->
		s.pinfeed.animate
			opacity: 1
	
	s.closeup_header.animate("default")
	
	
	
	
	
	




