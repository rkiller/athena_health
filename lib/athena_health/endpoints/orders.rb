module AthenaHealth
	module Endpoints
		module Orders

			def prescription_references(practice_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/reference/order/prescription",
					method: :get,
					params: params
				)
			end

			def create_prescription(practice_id:, encounter_id:, params: {})
				@api.call(
					endpoint: "#{practice_id}/chart/encounter/#{encounter_id}/orders/prescription",
					method: :post,
					body: params
				)
			end

		end
	end
end