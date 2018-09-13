module AthenaHealth
  class Claim < BaseModel
    attribute :claimdetails, Array[ClaimDeatils]
 	attribute :providergroupid, Integer
 	attribute :departmentids, String
  end
end