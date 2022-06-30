module AthenaHealth
  class Diagnosis < BaseModel
    attribute :deleteddiagnosis,      String
    attribute :diagnosiscategory,     String
    attribute :diagnosiscodeset,      String
    attribute :diagnosisdescription,  String
    attribute :diagnosisid,           String
    attribute :diagnosisrawcode,      String
  end
end