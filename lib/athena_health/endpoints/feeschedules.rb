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
				FeescheduleProcedure.new(response)
			end

		end
	end
end
