# {
#   "note": "string",
#   "count": 0,
#   "procedures": [
#     {
#       "units": 0,
#       "diagnoses": [
#         {
#           "icd10code": "string"
#         }
#       ],
#       "modifiers": [
#         {
#           "modifierid": 0
#         }
#       ],
#       "serviceid": 0,
#       "documentid": 0,
#       "servicetype": "string",
#       "procedurecode": "string",
#       "billforservice": ""
#     }
#   ]
# }
module AthenaHealth
	class EncounterService < BaseModel
		attribute :note, String
		attribute :count, Integer
		attribute :procedures, Array[EncounterProcedure]
	end
end