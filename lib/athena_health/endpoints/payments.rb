module AthenaHealth
  module Endpoints
    module Payments

      def get_receipt(practice_id:, patient_id:, epayment_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/receipts/#{epayment_id}",
            method: :get,
            params: params
        )
      end	

      def store_receipt(practice_id:, patient_id:, epayment_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/receipts/#{epayment_id}/signed",
            method: :post,
            body: params
        )
      end
    end
  end
end
