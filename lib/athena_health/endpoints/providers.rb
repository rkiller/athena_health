module AthenaHealth
  module Endpoints
    module Providers
      def all_providers(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/providers",
          method: :get,
          params: params
        )

        ProviderCollection.new(response)
      end

      def find_provider(practice_id:, provider_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/providers/#{provider_id}",
          method: :get,
          params: params
        )

        Provider.new(response.first)
      end

      #
      # Added by Clineva
      #
      def get_inbox_count(practice_id:, provider_id:)
        response = @api.call(
          endpoint: "#{practice_id}/providers/#{provider_id}/inbox/counts",
          method: :get
        )
      end

      def get_staff_inbox(practice_id:, provider_name:)
        response = @api.call(
          endpoint: "#{practice_id}/staff/#{provider_name + ' STAFF'}/inbox",
          method: :get
        )
      end

    end
  end
end
