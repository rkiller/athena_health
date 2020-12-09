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

      def patient_lab_result_timestamp(practice_id:, lab_result_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/documents/labresult/#{lab_result_id}/actions",
          method: :post,
          body: params
        )
      end
    end
  end
end
