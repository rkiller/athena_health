module AthenaHealth
  class ClaimCollection < BaseCollection
    attribute :claimbalancedetails, Array[Claim]
  end
end