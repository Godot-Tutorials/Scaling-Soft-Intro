extends Sprite

var deviceManager: DeviceManager = DeviceManager.new()
var resolutionWidth :float
var resolutionHeight :float

# make sure to edit scale everytime we enter the scene tree
func _enter_tree():
	# an easier way to do this is to in fact have the scaling value set in a Global Class/Singleton where we can pull the scale fraction/float value
	var scaleWidth = deviceManager.newDeviceWidth / Resolution.gameDevWidth()

	# grab new screen size and center our image
	var windowSize = OS.get_window_size()
	# print(windowSize)
	
	#always edit scale first before working on position
	# make sure to pick either 1 dimension when converting the scale
	self.scale.x = 1 * (scaleWidth)
	self.scale.y = 1 * (scaleWidth)
	
	self.position.x = windowSize.x / 2.0
	self.position.y = windowSize.y / 2.0


