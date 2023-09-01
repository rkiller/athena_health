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
	class MedicationCollection < BaseModel
		attribute :lastupdated,                 String
		attribute :medications,                 Array[Array[Medication]]
		attribute :sectionnote,                 String
		attribute :lastdownloaddenied,          Boolean
		attribute :lastdownloadeddate,          String
		attribute :nomedicationsreported,       Boolean
		attribute :patientdownloadconsent,      Boolean
		attribute :lastdownloaddenialreason,    String
		attribute :patientneedsdownloadconsent, Boolean
	end
end