# Durations at Pinterest
# Framer uses seconds
instant = .085
short = .250
medium = .420
semilong = .5
long = .8

# Motion curves
easeIn = Bezier(0.9, 0.025, 0.75, 0.625)
easeOut = Bezier(0.25, 0.375, 0.1, 0.975)
easeInOut = Bezier(0.66, 0.025, 0.33, 0.975)
spring = Spring(1, 100, 17, 8)

Framer.Defaults.Animation.time = 0.25

# Import file "headerscroll"
s = Framer.Importer.load("imported/headerscroll@2x", scale: 1)

scroll = ScrollComponent.wrap(s.closeupFeed)
scroll.scrollHorizontal = false

scroll.onMove (event, layer) ->
	y = scroll.scrollY
	
	#min is about when "More like this" is at the top of the feed
	min = 1520
	# we chose to make the range the same as the height header 
	max = min + s.header_more.height
	# check only within the range that we want something to happen
	# this is about when the "More like this" header is at the top of the screen
	if y > min and y < max
		# we change the y of the header_more function according to the scroll position of the feed
		# The first argument is your input, y, which is your scroll.scrollY
		# The second argument is the range of scrolling on the feed
		# The third argument is the range of the header off the screen to on the screen
		# Important! Putting in numerical values like -64 guarantee that it'll slide back out when you scroll. If you use a layer property like "s.header_more.y" instead, it won't scroll back out because your range will become [0,0]
		s.header_more.y = Utils.modulate(y, [min,max], [-64,0])

