package torque.consumption

import future.keywords.if
import future.keywords.in

# Q-04: nested data reference (data.config.blueprints) plus one flat reference.
result = {"decision": "Denied", "reason": "not allowed"} if {
	not input.blueprint.name in data.config.blueprints
	data.flat_value
} else = {"decision": "Approved"}
