#       "compoundvalues": [
#         {
#           "compoundkey": "string",
#           "compoundvalue": "string"
#         }
#       ]
module AthenaHealth
	class CompoundValue < BaseModel
		attribute :compoundkey, String
		attribute :compoundvalue, String
	end
end