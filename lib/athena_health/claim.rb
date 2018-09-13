module AthenaHealth
  class Claim < BaseModel
    attribute :claimdetails, Array[ClaimDetail]
 	attribute :providergroupid, Integer
 	attribute :departmentids, String
  end
end