module AthenaHealth
  module Endpoints
    module Messages
      def send_user_message(practice_id:, user_name:, params: {})
        @api.call(
          endpoint: "#{practice_id}/usermessages/#{user_name}",
          method: :post,
          body: params
        )
      end

      def get_lab_result_notes(practice_id:, lab_result_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/documents/labresult/#{lab_result_id}/actions",
          method: :get,
          params: params
        )
        ActionnoteCollection.new(response)
      end

      def add_lab_result_note(practice_id:, lab_result_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/documents/labresult/#{lab_result_id}/actions",
          headers: { "Content-Type" => "application/x-www-form-urlencoded" },
          method: :post,
          body: params
        )
      end
    end
  end
end
