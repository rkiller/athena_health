# {
#   "encounterreasons": [
#     {
#       "lastmodifieduser": "string",
#       "encounterreasonid": 0,
#       "encounterreasontext": "string",
#       "lastmodifieddatetime": "string"
#     }
#   ],
#   "encounterreasonnote": "string",
#   "notelastmodifieduser": "string",
#   "notelastmodifieddatetime": "string"
# }
module AthenaHealth
	class EncounterReason < BaseModel
		attribute :encounterreasons, Array[Reason]
		attribute :encounterreasonnote, String
		attribute :notelastmodifieduser, String
		attribute :notelastmodifieddatetime, String
	end
end