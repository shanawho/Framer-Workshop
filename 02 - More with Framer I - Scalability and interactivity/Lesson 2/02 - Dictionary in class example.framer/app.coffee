# Object
# Layer class
# "new ______" is a constructor
# Layer class comes with certain properties like x and y
layer = new Layer
	x: 0
	y: 0

# Object
# subclass of the Layer class
# Also comes with certain properties like x and y
bg = new BackgroundLayer


# Let's create our own Object
# It contains key,value pairs
# It's sometimes called a dictionary
# It's sometimes called a hashmap
team =
	designer: "shana"
	pm: "phebe"
	engineer: "victoria"

print team

# how to get a value
print team.designer
print team["pm"]

# how to index in with variables that reference keys
blah = "pm"
print team[blah]

# how to loop through it
for key, value of team
	print key, value

for role, person of team
	print role, person
	
	
	
	
	
	

