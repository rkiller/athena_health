# {
#   "appointmentid": "string",
#   "billedproviderid": 0,
#   "billedservicedate": "string",
#   "chargeamount": "string",
#   "claimcreateddate": "string",
#   "claimid": "string",
#   "customfields": [
#     {
#       "customfieldid": "string",
#       "customfieldvalue": "string",
#       "optionid": "string"
#     }
#   ],
#   "departmentid": 0,
#   "diagnoses": {
#     "deleteddiagnosis": "string",
#     "diagnosiscategory": "string",
#     "diagnosiscodeset": "string",
#     "diagnosisdescription": "string",
#     "diagnosisid": "string",
#     "diagnosisrawcode": "string"
#   },
#   "patientid": 0,
#   "patientpayer": {
#     "note": "string",
#     "status": "string"
#   },
#   "primaryinsurancepayer": {
#     "note": "string",
#     "primaryinsurancepackageid": 0,
#     "primarypatientinsuranceid": 0,
#     "status": "string"
#   },
#   "procedures": {
#     "allowableamount": "string",
#     "allowablemax": "string",
#     "allowablemin": "string",
#     "chargeamount": "string",
#     "procedurecategory": "string",
#     "procedurecode": "string",
#     "proceduredescription": "string",
#     "transactionid": "string"
#   },
#   "referralauthid": 0,
#   "referringproviderid": 0,
#   "reserved19": "string",
#   "secondaryinsurancepayer": {
#     "note": "string",
#     "secondaryinsurancepackageid": 0,
#     "secondarypatientinsuranceid": 0,
#     "status": "string"
#   },
#   "transactiondetails": {},
#   "transactionid": "string"
# }

module AthenaHealth
  class Claim < BaseModel
    attribute :appointmentid,           String
    attribute :billedproviderid,        Integer
    attribute :billedservicedate,       String
    attribute :chargeamount,            String
    attribute :claimcreateddate,        String
    attribute :claimid,                 Integer
    attribute :customfields,            Hash[Symbol => Array[CustomFields]]
    attribute :departmentid,            Integer
    attribute :diagnoses,               Hash[Symbol => Array[Diagnosis]]
    attribute :patientid,               Integer
    attribute :patientpayer,            Hash
    attribute :primaryinsurancepayer,   Hash
    attribute :secondaryinsurancepayer, Hash
    attribute :procedures,              Hash[Symbol => Array[Procedure]]
    attribute :referralauthid,          Integer
    attribute :referringproviderid,     Integer
    attribute :reserved19,              String
    attribute :transactiondetails,      Hash
    attribute :transactionid,           String
  end
end