extends "res://scripts/storyteller/actions/abstract_action.gd"

func perform(action_details):
    self.bag.root.is_locked_for_cpu = true
    self.bag.root.hud_controller.lock_hud()
    self.bag.root.hud_controller.hud_panel_anchor_top_right.hide()
    self.bag.root.hud.get_node("top_center").hide()
    self.bag.root.hud_controller.show_cinematic_camera()
    self.bag.root.selector.hide()
    self.bag.root.hud_controller.cinematic_camera.get_node("bottom/progress").hide()

