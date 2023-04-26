module AthenaHealth
  module Endpoints
    module InsurancePackages
      def top_insurance_packages(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/misc/topinsurancepackages",
          method: :get,
          params: params
        )

        InsurancePackageCollection.new(response)
      end

      def common_insurance_packages(practice_id:, params: {})
        response = @api.call(
          endpoint: "#{practice_id}/misc/commoninsurancepackages",
          method: :get,
          params: params
        )

        InsurancePackageCollection.new(response)
      end

      # POST
      # /v1/{practiceid}/insurancepackages/configuration/locallyadministered
      # claimformat: CorporateBilling / CMS1500
      def create_locally_administered_insurance_package(practice_id:, params: {})
        @api.call(
          endpoint: "#{practice_id}/insurancepackages/configuration/locallyadministered",
          method: :post,
          body: params
        )
      end
    end
  end
end
