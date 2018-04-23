# Import file "topic tabs"
s = Framer.Importer.load("imported/topic%20tabs@2x", scale: 1)
bg = new BackgroundLayer

tabScroll = ScrollComponent.wrap(s.topic_tabs)
tabScroll.scrollVertical = false

topicTabDict =
	pfy : s.pinfeed_pfy
	animals : s.pinfeed_animals
	home : s.pinfeed_home
	food : s.pinfeed_food

currTab = s.pfy_selected

# print s.topic_tabs.children
for tab in s.topic_tabs.children
	if tab.name isnt "Group"
		
		feed = topicTabDict[tab.name]
		scroll = ScrollComponent.wrap(feed)
		scroll.scrollHorizontal = false

		tab.onTap (event, layer) ->
			currFeed = topicTabDict[currTab.parent.name]
			currFeed.visible = false

			selectedFeed = topicTabDict[this.name]
			selectedFeed.visible = true
			
			selectedTab = this.children[0]
			selectedTab.visible = true

			if currTab isnt selectedTab
				currTab.visible = false
				currTab = selectedTab

