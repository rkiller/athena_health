# {
#   "note": "string",
#   "ranking": 0,
#   "icdcodes": [
#     {
#       "code": "string",
#       "codeset": "string",
#       "description": "string"
#     }
#   ],
#   "laterality": "string",
#   "snomedcode": 0,
#   "description": "string",
#   "diagnosisid": 0,
#   "supportslaterality": ""
# }

module AthenaHealth
  class Diagnosis < BaseModel
    attribute :note,                  String
    attribute :ranking,               Integer
    attribute :icdcodes,              Array[ICDCode]
    attribute :laterality,            String
    attribute :snomedcode,            Integer
    attribute :description,           String
    attribute :diagnosisid,           Integer
    attribute :supportslaterality,    String
  end
end