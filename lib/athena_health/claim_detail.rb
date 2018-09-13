module AthenaHealth
  class ClaimDetail < BaseModel
    attribute :claimid, 				Integer
 	attribute :departmentid, 			Integer
 	attribute :servicedate, 			String
 	attribute :cleanbalance, 			Boolean
 	attribute :patientbalance, 			String
 	attribute :supervisingproviderid,	Integer
 	attribute :amount,					String
  end
end