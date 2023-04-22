#   "diagnoses": [
#     {
#       "icd10code": "string"
#     }
#   ],
module AthenaHealth
	class EncounterDiagnosis < BaseModel
		attribute :icd10code, String
	end
end