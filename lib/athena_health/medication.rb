# {
#   "lastupdated": "string",
#   "medications": [
#     {
#       "route": "string",
#       "events": [
#         {
#           "type": "string",
#           "eventdate": "string",
#           "userdisplayname": "string"
#         }
#       ],
#       "rxnorm": "string",
#       "source": "string",
#       "status": "string",
#       "pharmacy": "string",
#       "quantity": 0,
#       "createdby": "string",
#       "approvedby": "string",
#       "billingndc": "string",
#       "medication": "string",
#       "ndcoptions": "string",
#       "organclass": "string",
#       "stopreason": "string",
#       "encounterid": 0,
#       "patientnote": "string",
#       "medicationid": 0,
#       "orderingmode": "string",
#       "prescribedby": "string",
#       "providernote": "string",
#       "quantityunit": "string",
#       "issafetorenew": "",
#       "structuredsig": [
#         {
#           "dosageroute": "string",
#           "dosageaction": "string",
#           "dosagedurationunit": "string",
#           "dosagequantityunit": "string",
#           "dosagedurationvalue": 0,
#           "dosagefrequencyunit": "string",
#           "dosagequantityvalue": 0,
#           "dosagefrequencyvalue": 0,
#           "dosagefrequencydescription": "string",
#           "dosageadditionalinstructions": "string"
#         }
#       ],
#       "isdiscontinued": "",
#       "refillsallowed": 0,
#       "isstructuredsig": "",
#       "pharmacyncpdpid": "string",
#       "unstructuredsig": "string",
#       "earliestfilldate": "string",
#       "futuresubmitdate": "string",
#       "therapeuticclass": "string",
#       "medicationentryid": "string"
#     }
#   ],
#   "sectionnote": "string",
#   "lastdownloaddenied": "",
#   "lastdownloadeddate": "string",
#   "nomedicationsreported": "",
#   "patientdownloadconsent": "",
#   "lastdownloaddenialreason": "string",
#   "patientneedsdownloadconsent": ""
# }
module AthenaHealth
  class Medication < BaseModel
    attribute :route,                   String
    attribute :events,                  Array[Event]
    attribute :rxnorm,                  String
    attribute :source,                  String
    attribute :status,                  String
    attribute :pharmacy,                String
    attribute :quantity,                Integer
    attribute :createdby,               String
    attribute :approvedby,              String
    attribute :billingndc,              String
    attribute :medication,              String
    attribute :ndcoptions,              String
    attribute :organclass,              String
    attribute :stopreason,              String
    attribute :encounterid,             Integer
    attribute :patientnote,             String
    attribute :medicationid,            Integer
    attribute :orderingmode,            String
    attribute :prescribedby,            String
    attribute :providernote,            String
    attribute :quantityunit,            String
    attribute :issafetorenew,           String
    attribute :structuredsig,           Array[MedicationSig]
    attribute :isdiscontinued,          String
    attribute :refillsallowed,          Integer
    attribute :isstructuredsig,         String
    attribute :pharmacyncpdpid,         String
    attribute :unstructuredsig,         String
    attribute :earliestfilldate,        String
    attribute :futuresubmitdate,        String
    attribute :therapeuticclass,        String
    attribute :medicationentryid,       String
  end
end
