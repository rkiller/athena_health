# {
#   "questions": [
#     {
#       "note": "string",
#       "answer": "string",
#       "codeset": "string",
#       "question": "string",
#       "questionid": 0,
#       "description": "string",
#       "diagnosiscode": "string",
#       "lastmodifiedby": "string",
#       "lastmodifieddatetime": "string"
#     }
#   ],
#   "sectionnote": "string",
#   "notelastmodifiedby": "string",
#   "notelastmodifieddatetime": "string"
# }
module AthenaHealth
  class MedicalHistory  < BaseModel
    attribute :questions,                   Array[Question]
    attribute :sectionnote,                 String
    attribute :notelastmodifiedby,          String
    attribute :notelastmodifieddatetime,    String
  end
end
