extends Node2D
class_name DeviceManager

# Change the new game screen resolution, overrides the Project Settings Default Resolution
var newDeviceWidth := 600.0
var newDeviceHeight := 600.0

func _enter_tree():
	# set a new game screen resolution
	OS.set_window_size(Vector2(newDeviceWidth,newDeviceHeight))
	
	# change the All In One Solution Scaling Setting
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D,SceneTree.STRETCH_ASPECT_EXPAND, Vector2(newDeviceWidth,newDeviceHeight))
