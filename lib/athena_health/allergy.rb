# {
#   "nkda": "",
#   "allergies": [
#     {
#       "id": "string",
#       "note": "string",
#       "onsetdate": "string",
#       "reactions": [
#         {
#           "severity": "string",
#           "snomedcode": 0,
#           "reactionname": "string",
#           "severitysnomedcode": 0
#         }
#       ],
#       "allergenid": 0,
#       "criticality": "string",
#       "allergenname": "string",
#       "deactivatedate": "string",
#       "lastmodifiedby": "string",
#       "deactivateduser": "string",
#       "lastmodifieddatetime": "string"
#     }
#   ],
#   "lastupdated": "string",
#   "sectionnote": "string",
#   "lastmodifiedby": "string",
#   "notelastmodifiedby": "string",
#   "lastmodifieddatetime": "string",
#   "notelastmodifieddatetime": "string"
# }

module AthenaHealth
  class Allergy < BaseModel
    attribute :allergyid,             Integer
    attribute :note,                  String
    attribute :onsetdate,             String
    attribute :reactions,             Array[Reaction]
    attribute :allergenid,            Integer
    attribute :criticality,           String
    attribute :allergenname,          String
    attribute :deactivatedate,        String
    attribute :lastmodifiedby,        String
    attribute :deactivateduser,       String
    attribute :lastmodifieddatetime,  String
  end
end
