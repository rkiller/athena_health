module AthenaHealth
	class PatientRecordCollection < BaseCollection
		attribute :patientrecords,    Array[PatientRecord]
	end
end
