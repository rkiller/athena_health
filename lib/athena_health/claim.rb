module AthenaHealth
  class Claim < BaseModel
    attribute :claimdetails, Array[ClaimDetails]
 	attribute :providergroupid, Integer
 	attribute :departmentids, String
  end
end