module AthenaHealth
  module Endpoints
    module Subscriptions
      
      #https://api.athenahealth.com/v1/15000/claims/changed/subscription?showadditionalevents=XXX
      def get_claim_events(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/claims/changed/subscription",
          method: :get,
          params: params
        )
      end

      #https://api.athenahealth.com/v1/15000/claims/changed/subscription
	  def create_patient(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/claims/changed/subscription",
          method: :post,
          body: params
        )
      end
    end
  end
end
