module AthenaHealth
	class MedicationCollection < BaseModel
		attribute :lastupdated,             String
		attribute :medications,             Array[Medication]
	end
end