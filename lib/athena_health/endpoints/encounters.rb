module AthenaHealth
  module Endpoints
    module Encounters
      def find_encounter(practice_id:, encounter_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/encounter/#{encounter_id}",
          method: :get
        )
        Encounter.new(response.first)
      end

      def encounter_orders(practice_id:, encounter_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/encounter/#{encounter_id}/orders",
          method: :get
        )
        OrderCollection.new(response.first)
      end

      def encounter_order(practice_id:, encounter_id:, order_id:)
        response = @api.call(
          endpoint: "#{practice_id}/chart/encounter/#{encounter_id}/orders/#{order_id}",
          method: :get
        )
        Order.new(response)
      end

      def encounter_summary(practice_id:, encounter_id:)
        response = @api.call(
          endpoint:  "#{practice_id}/chart/encounters/#{encounter_id}/summary",
          method: :get
        )
        EncounterSummary.new(response)
      end

      #
      # Added by Clineva
      #

      def encounter_services(practice_id:, encounter_id:)
        response = @api.call(
          endpoint:  "#{practice_id}/encounter/#{encounter_id}/services",
          method: :get
        )
        EncounterService.new(response)
      end

      def encounter_services_update(practice_id:, encounter_id:, params: {})
        response = @api.call(
          endpoint:  "#{practice_id}/encounter/#{encounter_id}/services",
          method: :post,
          body: params
        )
      end

      def encounter_hpi(practice_id:, encounter_id:)
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/hpi",
          method: :get,
          params: { showstructured: false}
        )
      end

      def encounter_hpi_update(practice_id:, encounter_id:, params: {})
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/hpi",
          method: :put,
          params: params
        )
      end

      def encounter_ros(practice_id:, encounter_id:)
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/reviewofsystems",
          method: :get,
          params: { showstructured: false}
        )
      end

      def encounter_ros_update(practice_id:, encounter_id:, params: {})
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/reviewofsystems",
          method: :put,
          params: params
        )
      end

      def encounter_exam(practice_id:, encounter_id:)
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/physicalexam",
          method: :get,
          params: { showstructured: false}
        )
      end

      def encounter_exam_update(practice_id:, encounter_id:, params: {})
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/physicalexam",
          method: :put,
          params: params
        )
      end

      def encounter_goals(practice_id:, encounter_id:)
        response = @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/patientgoals",
          method: :get
        )
        EncounterGoals.new(response)
      end

      def encounter_assessment(practice_id:, encounter_id:)
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/assessment",
          method: :get,
          params: { showstructured: false}
        )
      end

      def encounter_assessment_update(practice_id:, encounter_id:, params: {})
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/assessment",
          method: :put,
          params: params
        )
      end

      def encounter_diagnoses(practice_id:, encounter_id:)
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/diagnoses",
          method: :get,
          params: { showstructured: false}
        )
      end

      def encounter_diagnoses_update(practice_id:, encounter_id:, params: {})
        @api.call(
          endpoint:  "#{practice_id}/chart/encounter/#{encounter_id}/diagnoses",
          method: :post,
          body: params
        )
      end

      def patient_locations(practice_id:, department_id:)
        response = @api.call(
          endpoint:  "#{practice_id}/chart/configuration/patientlocations",
          method: :get,
          params: { departmentid: department_id }
        )
      end

      def patient_statuses(practice_id:)
        response = @api.call(
          endpoint:  "#{practice_id}/chart/configuration/patientstatuses",
          method: :get
        )
      end

    end
  end
end
