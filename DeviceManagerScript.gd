extends Node2D
class_name DeviceManager

var newDeviceWidth := 600.0
var newDeviceHeight := 600.0

func _enter_tree():
	OS.set_window_size(Vector2(newDeviceWidth,newDeviceHeight))
	get_tree().set_screen_stretch(SceneTree.STRETCH_MODE_2D,SceneTree.STRETCH_ASPECT_EXPAND, Vector2(newDeviceWidth,newDeviceHeight))
