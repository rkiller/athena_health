module AthenaHealth
	class ProblemCollection < BaseModel
		attribute :lastupdated,          String
		attribute :problems,             Array[Problem]
	end
end