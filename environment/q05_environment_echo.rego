package torque.environment

import future.keywords.if

# TEST ONLY: always denies and echoes the environment policy input in the reason.
result = {"decision": "Denied", "reason": json.marshal({
	"keys": [k | _ = input[k]],
	"owner_active_environments_in_space": object.get(input, "owner_active_environments_in_space", "MISSING"),
	"owner_active_environments_from_blueprint_in_space": object.get(input, "owner_active_environments_from_blueprint_in_space", "MISSING"),
	"action_identifier": object.get(input, "action_identifier", "MISSING"),
	"blueprint": object.get(input, "blueprint", "MISSING"),
})} if {
	true
}
