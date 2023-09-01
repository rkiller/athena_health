module AthenaHealth
	class Relative  < BaseModel
		attribute :problems,      Array[Problem]
		attribute :relation,      String
		attribute :relationkeyid, Integer
	end
end
