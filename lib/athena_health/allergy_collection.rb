module AthenaHealth
	class AllergyCollection < BaseModel
		attribute :allergies,             Array[Allergy]
	end
end