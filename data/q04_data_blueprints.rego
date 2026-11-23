package torque.consumption

import future.keywords.if
import future.keywords.in

# Q-04: allowed blueprints and groups supplied via policy data.
result = {"decision": "Denied", "reason": sprintf("blueprint %v is not in data.blueprints %v (groups %v)", [input.blueprint.name, data.blueprints, data.allowed_groups])} if {
	not input.blueprint.name in data.blueprints
} else = {"decision": "Approved"}
