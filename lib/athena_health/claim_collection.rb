module AthenaHealth
  class ClaimCollection < BaseCollection
    attribute :claimbalancedetails, Array[ClaimBalanceDetail]
  end
end