module AthenaHealth
	class MedicationCollection < BaseModel
		attribute :medications,             Array[Medication]
	end
end