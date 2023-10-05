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
	class Reason < BaseModel
		attribute :lastmodifieduser,      String
		attribute :encounterreasonid,     Integer
		attribute :encounterreasontext,   String
		attribute :lastmodifieddatetime,  String
	end
end