package torque.consumption

import future.keywords.if

# The customer's approach: per-owner limit in the consumption package.
result = {"decision": "Denied", "reason": "consumption: you already own 1 active environment in this space"} if {
	input.owner_active_environments_in_space >= 1
} else = {"decision": "Approved"}
