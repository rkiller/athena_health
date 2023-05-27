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

      # Get list of patient's lab result documents
      # GET/v1/{practiceid}/patients/{patientid}/documents/labresult 

      def patient_lab_result_documents(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents/labresults",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        DocumentCollection.new(response)
      end

    end
  end
end