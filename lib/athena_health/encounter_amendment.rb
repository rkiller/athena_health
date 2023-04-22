# {
#   "amendedclosedby": "string",
#   "amendedcloseddate": "string"
# }
module AthenaHealth
	class EncounterAmendment < BaseModel
		attribute :amendedclosedby, String
		attribute :amendedcloseddate, String
	end
end