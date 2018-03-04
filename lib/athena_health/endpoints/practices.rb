module AthenaHealth
  module Endpoints
    module Practices
      def all_practices(params: {})
        response = @api.call(
          endpoint: '1/practiceinfo',
          method: :get,
          params: params
        )

        PracticeCollection.new(response)
      end

      def find_practice(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/practiceinfo",
          method: :get,
          params: params
        )

        PracticeCollection.new(response).practices.first
      end

      def languages(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/languages",
          method: :get,
          params: params
        )
      end

      def ethnicities(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/ethnicities",
          method: :get,
          params: params
        )
      end

      def races(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/races",
          method: :get,
          params: params
        )
      end

    end
  end
end
