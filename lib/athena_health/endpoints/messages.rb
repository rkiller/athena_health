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
    end
  end
end
