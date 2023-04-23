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
module AthenaHealth
	class Goal < BaseModel
		attribute :name, String
		attribute :status, String
		attribute :duration, String
		attribute :goaltype, String
		attribute :targetvalue, String
		attribute :isprimarygoal, Boolean
		attribute :compoundvalues, Array[CompoundValue]
	end
end