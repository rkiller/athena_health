#   "diagnoses": [
#     {
#       "icd10code": "string"
#     }
#   ],
module AthenaHealth
	class EncounterDiagnosis < BaseModel
		attribute :icd10codes, String
	end
end