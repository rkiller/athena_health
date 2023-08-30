module AthenaHealth
	class AllergyCollection < BaseModel
		attribute :lastupdated,           String
		attribute :nkda,                  Boolean
		attribute :sectionnote,           String
		attribute :allergies,             Array[Allergy]
	end
end