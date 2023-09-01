# {
#   "relatives": [
#     {
#       "problems": [
#         {
#           "note": "string",
#           "onsetage": 0,
#           "diedofage": 0,
#           "problemid": 0,
#           "snomedcode": 0,
#           "description": "string",
#           "resolvedage": 0,
#           "lastmodifiedby": "string",
#           "lastmodifieddatetime": "string"
#         }
#       ],
#       "relation": "string",
#       "relationkeyid": 0
#     }
#   ],
#   "sectionnote": "string",
#   "historyunknown": "",
#   "sectionnotelastmodifiedby": "string",
#   "historyunknownlastmodifiedby": "string",
#   "sectionnotelastmodifieddatetime": "string",
#   "historyunknownlastmodifieddatetime": "string"
# }
module AthenaHealth
  class FamilyHistory  < BaseModel
    attribute :relatives,                       Array[Relative]
    attribute :sectionnote,                     String
    attribute :historyunknown,                  String
    attribute :sectionnotelastmodifiedby,       String
    attribute :historyunknownlastmodifiedby,    String
    attribute :sectionnotelastmodifieddatetime, String
  end
end
