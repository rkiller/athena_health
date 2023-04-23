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
module AthenaHealth
	class TopicOfDiscussion < BaseModel
		attribute :topicid, Integer
		attribute :declined, Boolean
		attribute :sectionid, Integer
		attribute :topicname, String
		attribute :encounterid, Integer
		attribute :sectionname, String
		attribute :versiontoken, String
		attribute :declinedreason, String
		attribute :lastmodifiedby, String
		attribute :declinedreasonid, Integer
		attribute :lastmodifieddatetime, String
		attribute :clinicalencounternotetopicid, Integer
	end
end