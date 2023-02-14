module AthenaHealth
  class LabResult < BaseModel
    attribute :analytes,              Array[Analyte]
    attribute :description,           String
    attribute :documentid,            String
    attribute :internalnote,          String
    attribute :isconfidential,        Boolean
    attribute :isreviewedbyprovider,  Boolean
    attribute :labresultdate,         String
    attribute :labresultnote,         String
    attribute :labresultid,           Integer
    attribute :orderid,               Integer
    attribute :resultstatus,          String
  end
end
