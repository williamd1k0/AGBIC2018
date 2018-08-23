extends Area2D

func set_dmg():
	pass


func _on_Area2D_area_entered(area):
	if area.owner.is_in_group("Enemy"):
		print("hello")