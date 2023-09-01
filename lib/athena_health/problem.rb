# {
#   "problems": [
#     {
#       "code": "string",
#       "name": "string",
#       "events": [
#         {
#           "note": "string",
#           "source": "string",
#           "status": "string",
#           "enddate": "string",
#           "createdby": "string",
#           "diagnoses": [
#             {
#               "code": "string",
#               "name": "string",
#               "codeset": "string"
#             }
#           ],
#           "eventtype": "string",
#           "onsetdate": "string",
#           "startdate": "string",
#           "laterality": "string",
#           "createddate": "string",
#           "encounterdate": "string"
#         }
#       ],
#       "codeset": "string",
#       "problemid": 0,
#       "lastmodifiedby": "string",
#       "deactivateddate": "string",
#       "deactivateduser": "string",
#       "bestmatchicd10code": "string",
#       "lastmodifieddatetime": "string",
#       "mostrecentdiagnosisnote": "string"
#     }
#   ],
#   "totalcount": 0,
#   "lastupdated": "string",
#   "sectionnote": "string",
#   "lastmodifiedby": "string",
#   "noknownproblems": "",
#   "notelastmodifiedby": "string",
#   "lastmodifieddatetime": "string",
#   "notelastmodifieddatetime": "string"
# }
module AthenaHealth
	class Problem < BaseModel
		attribute :code,                    String
		attribute :name,                    String
		attribute :events,                  Array[Event]
		attribute :codeset,                 String
		attribute :problemid,               Integer
		attribute :lastmodifiedby,          String
		attribute :deactivateddate,         String
		attribute :deactivateduser,         String
		attribute :bestmatchicd10code,      String
		attribute :lastmodifieddatetime,    String
		attribute :mostrecentdiagnosisnote, String
	end
end