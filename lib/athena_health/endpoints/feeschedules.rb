module AthenaHealth
	module Endpoints
		module Feeschedules

			# {
			#   "fee": 0,
			#   "feeexists": "",
			#   "description": "string",
			#   "servicedate": "string",
			#   "departmentid": 0,
			#   "procedurecode": "string",
			#   "insurancepackageid": 0,
			#   "procedurecodegroupid": 0,
			#   "procedurecodegroupname": "string"
			# }
			def check_procedure(practice_id:, params: {})
				response = @api.call(
					endpoint: "#{practice_id}/feeschedules/checkprocedure",
					method: :get,
					params: params
				)
				FeescheduleProcedure.new(response.first)
			end

			# POST
			# /v1/{practiceid}/feeschedules/configuration/procedure
			#
			# field amount, type number -> The amount to charge for this procedure code.
			# field feescheduleid, type integer -> The ID of the fee schedule.
			# field procedurecode, type string -> The procedure code to be added or updated.
			def create_feeschedule_procedure(practice_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/feeschedules/configuration/procedure",
					method: :post,
					body: params
				)
				FeescheduleProcedure.new(response.first)
			end

			# DELETE
			# /v1/{practiceid}/feeschedules/configuration/procedure
			#
			# field feescheduleid, type integer -> The ID of the fee schedule.
			# field procedurecode, type string -> The procedure code to be added or updated.
			def delete_feeschedule_procedure(practice_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/feeschedules/configuration/procedure",
					method: :delete,
					params: params
				)
			end
		end
	end
end
