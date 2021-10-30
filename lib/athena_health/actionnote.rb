module AthenaHealth
  class Actionnote < BaseModel
    attribute :actionnote,        String
    attribute :priority,          Integer
    attribute :assignedto,        String
    attribute :createddatetime,   String
    attribute :status,            String
    attribute :patientid,         Integer
    attribute :createdby,         String
  end
end
