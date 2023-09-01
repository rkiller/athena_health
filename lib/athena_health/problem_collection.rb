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
	class ProblemCollection < BaseModel
		attribute :problems,                  Array[Problem]
		attribute :totalcount,                Integer
		attribute :lastupdated,               String
		attribute :sectionnote,               String
		attribute :lastmodifiedby,            String
		attribute :noknownproblems,           String
		attribute :notelastmodifiedby,        String
		attribute :lastmodifieddatetime,      String
		attribute :notelastmodifieddatetime,  String
	end
end