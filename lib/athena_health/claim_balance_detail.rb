module AthenaHealth
  class ClaimBalanceDetail < BaseModel
    attribute :claimdetails, Array[ClaimDetail]
 	  attribute :providergroupid, Integer
 	  attribute :departmentids, String
  end
end