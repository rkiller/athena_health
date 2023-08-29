module AthenaHealth
	module Endpoints
		module Charts

			def vitals(practice_id:)
				@api.call(
					endpoint:  "#{practice_id}/chart/configuration/vitals",
					method: :get
				)
			end

			def get_patient_allergies(practice_id:, patient_id:)
				response = @api.call(
					endpoint: "#{practice_id}/chart/#{patient_id}/allergies",
					method: :get
				)
				AllergyCollection.new(response)
			end

			def update_patient_allergies(practice_id:, patient_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/chart/#{patient_id}/allergies",
					method: :put,
					body: params
				)
			end

			def get_patient_medications(practice_id:, patient_id:)
				response = @api.call(
					endpoint: "#{practice_id}/chart/#{patient_id}/medications",
					method: :get
				)
				MedicationCollection.new(response)
			end

			def update_patient_medications(practice_id:, patient_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/chart/#{patient_id}/medications",
					method: :put,
					body: params
				)
			end

			def get_patient_problems(practice_id:, patient_id:)
				response = @api.call(
					endpoint: "#{practice_id}/chart/#{patient_id}/problems",
					method: :get
				)
				ProblemCollection.new(response)
			end

			def update_patient_problems(practice_id:, patient_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/chart/#{patient_id}/problems",
					method: :put,
					body: params
				)
			end

		end
	end
end