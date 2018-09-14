module AthenaHealth
  module Endpoints
    module Payments

      def get_oneyear_contracts(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/collectpayment/oneyear",
          method: :get,
          params: params.merge( departmentid: department_id )
        )
      end

      def get_singleappointment_contracts(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/collectpayment/singleappointment",
          method: :get,
          params: params.merge( departmentid: department_id )
        )
      end

      def get_stored_cards_contracts(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/collectpayment/storedcard",
          method: :get,
          params: params.merge( departmentid: department_id )
        )
      end

      def card_on_file(practice_id:, patient_id:, department_id:, body: {})
		@api.call(
	    	endpoint: "#{practice_id}/patients/#{patient_id}/collectpayment/storedcard",
	    	method: :post,
	    	body: body.merge(
	      		departmentid: department_id
	    	)
		)
      end

      def make_payment(practice_id:, patient_id:, department_id:, storedcard_id:, body: {})
		@api.call(
	    	endpoint: "#{practice_id}/patients/#{patient_id}/collectpayment/storedcard/#{storedcard_id}",
	    	method: :post,
	    	body: body.merge( departmentid: department_id )
		)
      end

      def get_receipt(practice_id:, patient_id:, epayment_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/receipts/#{epayment_id}",
            method: :get,
            params: params
        )
      end	

      def email_receipt(practice_id:, patient_id:, epayment_id:, body: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/receipts/#{epayment_id}/email",
            method: :post,
            body: body
        )
      end	

      def store_receipt(practice_id:, patient_id:, epayment_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/receipts/#{epayment_id}/signed",
            method: :post,
            body: params
        )
      end
    end
  end
end
