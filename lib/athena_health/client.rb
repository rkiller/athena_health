module AthenaHealth
  class Client
    def initialize(version:, key:, secret:, token: nil, auth_url:, base_url:)
      @api = AthenaHealth::Connection.new(
        version: version,
        key: key,
        secret: secret,
        token: token,
        auth_url: auth_url,
        base_url: base_url
      )
    end

    include Endpoints::Claims
    include Endpoints::Practices
    include Endpoints::Departments
    include Endpoints::Patients
    include Endpoints::Appointments
    include Endpoints::Providers
    include Endpoints::InsurancePackages
    include Endpoints::Encounters
    include Endpoints::Configurations
    include Endpoints::Messages
    include Endpoints::Payments
    include Endpoints::Subscriptions
    include Endpoints::Documents
    include Endpoints::Employers
    include Endpoints::Feeschedules
    include Endpoints::Charts
  end
end
