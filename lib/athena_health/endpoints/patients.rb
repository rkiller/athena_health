module AthenaHealth
  module Endpoints
    module Patients
      def all_patients(practice_id:, department_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        PatientCollection.new(response)
      end

      def find_patient(practice_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}",
          method: :get,
          params: params
        )

        Patient.new(response.first)
      end

      def find_bestmatch_patients(practice_id:, date_of_birth:, first_name:, last_name:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/enhancedbestmatch",
          method: :get,
          params: params.merge!(firstname: first_name, lastname: last_name, dob: date_of_birth)
        )

        response.map{ |patient| Patient.new(patient) }
      end

      def create_patient(practice_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients",
          method: :post,
          body: params.merge!(departmentid: department_id)
        )
      end

      def update_patient(practice_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}",
          method: :put,
          params: params
        )
      end

      def delete_patient(practice_id:, patient_id:)
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}",
          method: :put,
          params: { status: 'deleted' }
        )
      end

      def patient_encounters(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/encounters",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        EncounterCollection.new(response)
      end

      def patient_lab_results(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/labresults",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        LabResultCollection.new(response)
      end

      def patient_lab_result_document(practice_id:, patient_id:, lab_result_id:)
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents/labresult/#{lab_result_id}",
          method: :get
        ).first

        Document.new(response)
      end

      def patient_medical_history(practice_id:, department_id:, patient_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/medicalhistory",
          method: :get,
          params: { departmentid: department_id }
        )

        QuestionCollection.new(response)
      end

      def update_patient_medical_history(practice_id:, department_id:, patient_id:, questions:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/medicalhistory",
          method: :put,
          params: { departmentid: department_id, questions: questions.to_json }
        )
      end

      def patient_prescriptions(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents/prescription",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        PrescriptionCollection.new(response)
      end

      def patient_analytes(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/analytes",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        AnalyteCollection.new(response)
      end

      def patient_appointments(practice_id:, patient_id:, params: {})
          response = @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/appointments",
            method: :get,
            params: params
          )

          AppointmentCollection.new(response)
      end

      def patient_documents(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        DocumentCollection.new(response)
      end

      def create_patient_document(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents",
          method: :post,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def patient_default_pharmacy(practice_id:, department_id:, patient_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/pharmacies/default",
          method: :get,
          params: { departmentid: department_id }
        )

        Pharmacy.new(response)
      end

      def set_patient_default_pharmacy(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/pharmacies/default",
          method: :put,
          params: params.merge!(departmentid: department_id)
        )
      end

      def patient_preferred_pharmacies(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/pharmacies/preferred",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        PharmacyCollection.new(response)
      end

      def add_patient_preferred_pharmacy(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/pharmacies/preferred",
          method: :put,
          params: params.merge!(departmentid: department_id)
        )
      end

      def patient_default_laboratory(practice_id:, department_id:, patient_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/labs/default",
          method: :get,
          params: { departmentid: department_id }
        )

        Laboratory.new(response)
      end

      def set_patient_default_laboratory(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/labs/default",
          method: :put,
          params: params.merge!(departmentid: department_id)
        )
      end

      def patient_social_history_templates(practice_id:, department_id:, patient_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/socialhistory/templates",
          method: :get,
          params: { departmentid: department_id }
        )

        response.map {|template| AthenaHealth::Template.new(template) }
      end

      def set_patient_social_history_templates(practice_id:, department_id:, patient_id:, template_ids: [])
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/socialhistory/templates",
          method: :put,
          params: { departmentid: department_id, templateids: template_ids.join(', ') }
        )
      end

      def update_patient_social_history(practice_id:, department_id:, patient_id:, questions:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/socialhistory",
          method: :put,
          params: { departmentid: department_id, questions: questions.to_json }
        )
      end

      def patient_social_history(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/socialhistory",
          method: :get,
          params: params.merge!(departmentid: department_id)
        )

        SocialHistory.new(response)
      end

      def verify_patient_privacy_information(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/privacyinformationverified",
          method: :post,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def create_patient_insurance(practice_id:, patient_id:, insurance_package_id:, sequence_number:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances",
          method: :post,
          body: params.merge!(insurancepackageid: insurance_package_id, sequencenumber: sequence_number)
        )
        Insurance.new(response[0])
      end

      def update_patient_insurance(practice_id:, patient_id:, sequence_number:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances",
          method: :put,
          body: params.merge!(sequencenumber: sequence_number)
        )
      end

      def update_patient_insurance_package(practice_id:, patient_id:, insurance_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances/#{insurance_id}",
          method: :put,
          body: params
        )
      end

      def delete_patient_insurance(practice_id:, patient_id:, sequence_number:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances",
          method: :delete,
          params: params.merge!(sequencenumber: sequence_number)
        )
      end

      def delete_patient_insurance_package(practice_id:, patient_id:, insurance_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances/#{insurance_id}",
          method: :delete
        )
      end

      # POST
      # /v1/{practiceid}/patients/{patientid}/insurances/casepolicies
      # Create patient's specific case policy
      def create_casepolicy(practice_id:, patient_id:, insurance_package_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances/casepolicies",
          method: :post,
          body: params.merge!(insurancepackageid: insurance_package_id)
        )
        Insurance.new(response[0])
      end

      def get_patient_insurance_card_image(practice_id:, patient_id:, insurance_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances/#{insurance_id}/image", 
          method: :get,
          params: params,
          raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def update_patient_insurance_card_image(practice_id:, patient_id:, insurance_id:, image:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances/#{insurance_id}/image", 
          method: :put,
          body: {image: image}
        )
      end

      def record_payment(practice_id:, department_id:, patient_id:, payment_method:, amount:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/recordpayment",
          method: :post,
          body: params.merge!(
            departmentid: department_id.to_s,
            paymentmethod: payment_method,
            copayamount: amount
          )
        )
      end

      def patient_insurances(practice_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances",
          method: :get,
          params: params
        )

        InsuranceCollection.new(response)
      end

      def update_patient_photo(practice_id:, patient_id:, image:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/photo",
          method: :post,
          body: params.merge!(image: image)
        )
      end

      #
      # New Patient Methods - RK
      #

      def get_patient_admin_document(practice_id:, patient_id:, admin_id:)
        response = @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/admin/#{admin_id}",
            method: :get
        )
        response.is_a?(Array) ? Document.new(response.first) : []
      end

      def get_patient_admin_document_attachment(practice_id:, patient_id:, admin_id:)
        response = @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/admin/#{admin_id}/originaldocument",
            method: :get,
            raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def get_patient_admin_document_image(practice_id:, patient_id:, admin_id:, page_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents/admin/#{admin_id}/pages/#{page_id}",
          method: :get,
          params: params,
          raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def create_patient_admin_document(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/admin",
            method: :post,
            body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def update_patient_admin_document(practice_id:, patient_id:, admin_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/admin/#{admin_id}",
            method: :put,
            body: params
        )
      end

      def delete_patient_admin_document(practice_id:, patient_id:, admin_id:)
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/admin/#{admin_id}",
            method: :delete
        )
      end

      def create_patient_encounter_document(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/encounterdocument",
            method: :post,
            body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def delete_patient_encounter_document(practice_id:, patient_id:, admin_id:)
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/documents/encounterdocument/#{encounter_id}",
            method: :delete
        )
      end

      def patient_satisfaction(practice_id:, department_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patientsatisfaction",
            method: :get,
            params: params.merge!(departmentid: department_id.to_s)
        )
      end

      def get_patient_custom_fields(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/customfields",
            method: :get,
            params: params.merge!(departmentid: department_id.to_s)
        )
      end

      def update_patient_custom_fields(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
            endpoint: "#{practice_id}/patients/#{patient_id}/customfields",
            method: :put,
            params: params.merge!(departmentid: department_id.to_s)
        )
      end

      def get_patient_photo(practice_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/photo",
          method: :get,
          params: params,
          raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def delete_patient_photo(practice_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/photo",
          method: :delete
        )
      end

      def export_patient_document(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/chart/#{patient_id}/documentexport",
          method: :post,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def get_patient_document(practice_id:, patient_id:, document_id:, params: {})
      	response = @api.call(
      	  endpoint: "#{practice_id}/chart/#{patient_id}/documentexport/#{document_id}",
          method: :get,
          params: params,
          raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def patient_statements(practice_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/patientstatement",
          method: :get,
          params: params
        )
      end

      def get_patient_statement(practice_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/patientstatementimage",
          method: :get,
          params: params,
          raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def patient_letters(practice_id:, department_id:, patient_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents/letter",
          method: :get,
          params: params.merge!(departmentid: department_id.to_s)
        )
        LetterCollection.new(response)
      end

      def get_patient_letter(practice_id:, patient_id:, letter_id:, params: {})
      	@api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/documents/letter/#{letter_id}",
          method: :get,
          params: params
        )
      end
      
      def medication_history_consent(practice_id:, department_id:, patient_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/medicationhistoryconsentverified",
          method: :post,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def drivers_license(practice_id:, patient_id:, params: {})
      	response = @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/driverslicense",
          method: :get,
          params: params,
          raw: true
        )
        StringIO.new(Base64.encode64(response))
      end

      def upload_drivers_license(practice_id:, department_id:, patient_id:, params: {})
      	@api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/driverslicense",
          method: :post,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def delete_drivers_license(practice_id:, patient_id:, params: {})
      	@api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/driverslicense",
          method: :delete
        )
      end

      def benefitdetails(practice_id:, patient_id:, insurance_id:, params: {})
      	@api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/insurances/#{insurance_id}/benefitdetails",
          method: :get,
          params: params
        )
      end

      def get_chart_alerts(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/chartalert",
          method: :get,
          params: params.merge!(departmentid: department_id.to_s)
        )
      end

      def create_chart_alert(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/chartalert",
          method: :post,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def update_chart_alert(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/chartalert",
          method: :put,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end

      def delete_chart_alert(practice_id:, patient_id:, department_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/patients/#{patient_id}/chartalert",
          method: :delete,
          body: params.merge!(departmentid: department_id.to_s)
        )
      end
    end
  end
end
