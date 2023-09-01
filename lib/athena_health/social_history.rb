# {
#   "questions": [
#     {
#       "key": "string",
#       "note": "string",
#       "answer": "string",
#       "ordering": 0,
#       "question": "string",
#       "deprecated": "string",
#       "questionid": 0,
#       "templateid": 0,
#       "lastupdated": "string",
#       "lastupdatedby": "string",
#       "notelastupdatedby": "string",
#       "notperformedreason": "string",
#       "notelastupdateddate": "string"
#     }
#   ],
#   "templates": [
#     {
#       "templateid": 0,
#       "templatename": "string"
#     }
#   ],
#   "sectionnote": "string",
#   "sectionnotelastupdatedby": "string",
#   "sectionnotelastupdateddate": "string"
# }
module AthenaHealth
  class SocialHistory  < BaseModel
    attribute :templates,                   Array[Template]
    attribute :questions,                   Array[Question]
    attribute :sectionnote,                 String
    attribute :sectionnotelastupdatedby,    String
    attribute :sectionnotelastupdateddate,  String
  end
end
