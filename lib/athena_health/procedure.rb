module AthenaHealth
  class Procedure < BaseModel
    attribute :allowableamount,       String
    attribute :allowablemax,          String
    attribute :allowablemin,          String
    attribute :chargeamount,          String
    attribute :procedurecategory,     String
    attribute :procedurecode,         String
    attribute :proceduredescription,  String
    attribute :transactionid,         String
  end
end