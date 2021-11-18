module AthenaHealth
  module Endpoints
    module Documents
    
      def close_lab_result(practice_id:, lab_result_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/documents/labresult/#{lab_result_id}/close",
          headers: { "Content-Type" => "application/x-www-form-urlencoded" },
          method: :put,
          body: params
        )
      end

      def close_imaging_result(practice_id:, imaging_result_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/documents/imagingresult/#{imaging_result_id}/close",
          headers: { "Content-Type" => "application/x-www-form-urlencoded" },
          method: :put,
          body: params
        )
      end

    end
  end
end