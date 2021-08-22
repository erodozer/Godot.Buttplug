extends Control

func _ready():
	# connect navigation
	for child in $HBoxContainer/Navigation.get_children():
		var btn = child as Button
		if btn:
			btn.connect("toggled", self, "set_view", [btn.name])
		
func set_view(show, View):
	var v = get_node("HBoxContainer/View/PanelContainer").find_node(View, false)
	if v:
		v.visible = show
