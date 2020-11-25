module AthenaHealth
  module Endpoints
    module Subscriptions
      #
      # CLAIMS
      #
      #https://api.athenahealth.com/v1/15000/claims/changed/subscription?showadditionalevents=XXX
      def get_claim_events(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/claims/changed/subscription",
          method: :get,
          params: params
        )
      end

      #https://api.athenahealth.com/v1/15000/claims/changed/subscription?showadditionalevents=XXX
      def get_changed_claims(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/claims/changed",
          method: :get,
          params: params
        )
      end

      #https://api.athenahealth.com/v1/15000/claims/changed/subscription
      def subscribe_to_claim_events(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/claims/changed/subscription",
          method: :post,
          body: params
        )
      end

      def unsubscribe_to_claim_events(practice_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/claims/changed/subscription",
            method: :delete,
            body: params
        )
      end

      #
      # LABS
      #
      def get_lab_events(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/labresults/changed/subscription",
          method: :get,
          params: params
        )
      end
      
      def get_changed_labs(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/labresults/changed",
          method: :get,
          params: params
        )
      end

      def subscribe_to_lab_events(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/labresults/changed/subscription",
          method: :post,
          body: params
        )
      end
    
	  def unsubscribe_to_lab_events(practice_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/labresults/changed/subscription",
            method: :delete,
            body: params
        )
      end

    end
  end
end
