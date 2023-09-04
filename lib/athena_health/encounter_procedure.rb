# {
#   "units": 0,
#   "diagnoses": []
#   "modifiers": [],
#   "serviceid": 0,
#   "documentid": 0,
#   "servicetype": "string",
#   "procedurecode": "string",
#   "billforservice": ""
# }
module AthenaHealth
	class EncounterProcedure < BaseModel
		attribute :units, Integer
		attribute :diagnoses, Array[EncounterDiagnosis]
		attribute :modifiers, Array[EncounterModifier]
		attribute :serviceid, Integer
		attribute :documentid, Integer
		attribute :servicetype, String
		attribute :procedurecode, String
		attribute :billforservice, Boolean
	end
end