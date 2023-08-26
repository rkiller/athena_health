module AthenaHealth
	class ProblemCollection < BaseModel
		attribute :problems,             Array[Problem]
	end
end