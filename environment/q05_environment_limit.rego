package torque.environment

import future.keywords.if

# Proposed answer: per-owner and per-blueprint limits in the environment package.
result = {"decision": "Denied", "reason": "environment: you already own 2 active environments in this space"} if {
	input.action_identifier.action_type == "Launch"
	input.owner_active_environments_in_space >= 2
} else = {"decision": "Denied", "reason": "environment: you already own an active environment from this blueprint"} if {
	input.action_identifier.action_type == "Launch"
	input.owner_active_environments_from_blueprint_in_space >= 1
} else = {"decision": "Approved"}
