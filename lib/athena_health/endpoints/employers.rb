module AthenaHealth
	module Endpoints
		module Employers

			# {
			#   "id": "string",
			#   "fax": "string",
			#   "zip": "string",
			#   "city": "string",
			#   "name": "string",
			#   "notes": "string",
			#   "phone": "string",
			#   "state": "string",
			#   "address": "string",
			#   "ordering": "string"
			# }
			def find_employer(params: {})
				@api.call(
					endpoint: "#{practice_id}/employers",
					method: :get,
					params: params
				)
			end

			# Returns:
			# {
			#   "employerid": 0
			# }
			def create_employer(params: {})
				@api.call(
					endpoint: "#{practice_id}/employers",
					method: :post,
					body: params
				)
			end
		end
	end
end
