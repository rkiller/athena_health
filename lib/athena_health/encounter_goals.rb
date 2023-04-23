# {
#   "goals": [
#     {
#       "name": "string",
#       "status": "string",
#       "duration": "string",
#       "goaltype": "string",
#       "targetvalue": "string",
#       "isprimarygoal": "",
#       "compoundvalues": [
#         {
#           "compoundkey": "string",
#           "compoundvalue": "string"
#         }
#       ]
#     }
#   ],
#   "freetextgoal": "string",
#   "versiontokens": {
#     "freetextgoal": "string",
#     "discussionnotes": "string",
#     "patientinstructions": "string"
#   },
#   "discussionnotes": "string",
#   "auditinformation": {
#     "freetextgoal": {
#       "lastmodifiedby": "string",
#       "lastmodifieddatetime": "string"
#     },
#     "discussionnotes": {
#       "lastmodifiedby": "string",
#       "lastmodifieddatetime": "string"
#     },
#     "patientinstructions": {
#       "lastmodifiedby": "string",
#       "lastmodifieddatetime": "string"
#     }
#   },
#   "topicsofdiscussion": [
#     {
#       "topicid": 0,
#       "declined": "",
#       "sectionid": 0,
#       "topicname": "string",
#       "encounterid": 0,
#       "sectionname": "string",
#       "versiontoken": "string",
#       "declinedreason": "string",
#       "lastmodifiedby": "string",
#       "declinedreasonid": 0,
#       "lastmodifieddatetime": "string",
#       "clinicalencounternotetopicid": 0
#     }
#   ],
#   "patientinstructions": "string"
# }
module AthenaHealth
	class EncounterGoals < BaseModel
		attribute :goals,               Array[Goal]
		attribute :freetextgoal,        String
		attribute :versiontokens,       Hash
		attribute :discussionnotes,     String
		attribute :auditinformation,    Hash
		attribute :topicsofdiscussion,  Array[TopicOfDiscussion]
		attribute :patientinstructions, String
	end
end