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
			def find_employer(practice_id:, params: {})
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
			def create_employer(practice_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/employers",
					method: :post,
					body: params
				)
			end

			# Returns:
			# {
			#   "employerid": 0
			# }
			def update_employer(practice_id:, employer_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/employers/#{employer_id}",
					method: :put,
					body: params
				)
			end

			def delete_employer(practice_id:, employer_id:)
				@api.call(
					endpoint: "#{practice_id}/employers/#{employer_id}",
					method: :delete
				)
			end
		end
	end
end
