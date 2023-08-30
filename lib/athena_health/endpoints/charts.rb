module AthenaHealth
	module Endpoints
		module Charts

			def vitals_configuration(practice_id:)
				@api.call(
					endpoint:  "#{practice_id}/chart/configuration/vitals",
					method: :get
				)
			end

			# This is removed (8.30.23) from patient.rb Added as comment for reference
			# def patient_allergies(practice_id:, department_id:, patient_id:, params: {})
			#         response = @api.call(
			#           endpoint: "#{practice_id}/chart/#{patient_id}/allergies",
			#           method: :get,
			#           params: params.merge!(departmentid: department_id)
			#         )
			#
			#         AllergyCollection.new(response)
			#       end
			#
			#       def update_patient_allergies(practice_id:, department_id:, patient_id:, allergies:, params: {})
			#         response = @api.call(
			#           endpoint: "#{practice_id}/chart/#{patient_id}/allergies",
			#           method: :put,
			#           params: params.merge!(departmentid: department_id, allergies: allergies.to_json)
			#         )
			#       end
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

			# This is removed (8.30.23) from patient.rb Added as comment for reference
			# def patient_medications(practice_id:, department_id:, patient_id:, params: {})
			#         response = @api.call(
			#           endpoint: "#{practice_id}/chart/#{patient_id}/medications",
			#           method: :get,
			#           params: params.merge!(departmentid: department_id)
			#         )
			#
			#         response['medications'] = response['medications'].flatten
			#
			#         MedicationCollection.new(response)
			#       end
			#
			#       def add_patient_medication(practice_id:, department_id:, patient_id:, medication_id:, params: {})
			#         response = @api.call(
			#           endpoint: "#{practice_id}/chart/#{patient_id}/medications",
			#           method: :post,
			#           body: params.merge!(departmentid: department_id, medicationid: medication_id)
			#         )
			#       end
			#
			#       def update_patient_medications(practice_id:, department_id:, patient_id:, params: {})
			#         response = @api.call(
			#             endpoint: "#{practice_id}/chart/#{patient_id}/medications",
			#             method: :put,
			#             body: params.merge!(departmentid: department_id)
			#         )
			#       end
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

			# This is removed (8.30.23) from patient.rb Added as comment for reference
			# def create_patient_problem(practice_id:, department_id:, patient_id:, snomed_code:, params: {})
			#         @api.call(
			#           endpoint: "#{practice_id}/chart/#{patient_id}/problems",
			#           method: :post,
			#           body: params.merge!(departmentid: department_id, snomedcode: snomed_code)
			#         )
			#       end
			#
			#       def find_patient_problems(practice_id:, department_id:, patient_id:)
			#         response = @api.call(
			#           endpoint: "#{practice_id}/chart/#{patient_id}/problems",
			#           method: :get,
			#           params: { departmentid: department_id }
			#         )
			#
			#         PatientProblemCollection.new(response)
			#       end
			#
			#

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