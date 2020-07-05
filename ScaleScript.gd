extends Sprite

var deviceManager: DeviceManager = DeviceManager.new()
var resolutionWidth :float
var resolutionHeight :float

func _enter_tree():
	var scaleWidth = deviceManager.newDeviceWidth / Resolution.gameDevWidth()

	var windowSize = OS.get_window_size()
	# print(windowSize)
	
	#always edit scale first before working on position
	# make sure to pick either 1 dimension when converting the scale
	self.scale.x = 1 * (scaleWidth)
	self.scale.y = 1 * (scaleWidth)
	
	self.position.x = windowSize.x / 2.0
	self.position.y = windowSize.y / 2.0


