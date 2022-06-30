#   "customfields": [
#     {
#       "customfieldid": "string",
#       "customfieldvalue": "string",
#       "optionid": "string"
#     }
#   ],

module AthenaHealth
  class CustomFields < BaseModel
    attribute :customfieldid,     String
    attribute :customfieldvalue,  String
    attribute :optionid,          String
  end
end