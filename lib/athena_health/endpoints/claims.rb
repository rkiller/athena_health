module AthenaHealth
  module Endpoints
    module Claims

      def find_claim(practice_id:, claim_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/claims/#{claim_id}",
          method: :get,
          params: params
        )
        
        Claim.new(response)
      end

      def create_claim(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/claims",
          method: :post,
          body: params
        )
      end

      def create_claim_with_appointment(practice_id:, appointment_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/appointments/#{appointment_id}/claim",
          method: :post,
          body: params
        )
      end

      def claim_note( practice_id:, claim_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/claims/#{claim_id}/note",
          method: :post,
          body: params
        )
      end

    end
  end
end