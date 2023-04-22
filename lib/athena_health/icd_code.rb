#   "icdcodes": [
#     {
#       "code": "string",
#       "codeset": "string",
#       "description": "string"
#     }
#   ],
module AthenaHealth
	class ICDCode < BaseModel
		attribute :code, String
		attribute :codeset, String
		attribute :description, String
	end
end