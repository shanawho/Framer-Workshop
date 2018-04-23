plugin.run = (contents, options) ->
	"""
# Parse JSON
json = JSON.parse Utils.domLoadDataSync "path/to/filename.json"
	"""