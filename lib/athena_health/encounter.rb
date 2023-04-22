# {
#   "stage": "string",
#   "status": "string",
#   "diagnoses": [
#     {
#       "note": "string",
#       "icdcodes": [
#         {
#           "code": "string",
#           "codeset": "string",
#           "description": "string"
#         }
#       ],
#       "snomedcode": 0,
#       "description": "string",
#       "diagnosisid": 0
#     }
#   ],
#   "closeddate": "string",
#   "closeduser": "string",
#   "providerid": 0,
#   "encounterid": 0,
#   "lastupdated": "string",
#   "departmentid": 0,
#   "lastreopened": "string",
#   "appointmentid": 0,
#   "encounterdate": "string",
#   "encountertype": "string",
#   "patientstatus": "string",
#   "providerphone": "string",
#   "patientlocation": "string",
#   "patientstatusid": 0,
#   "providerlastname": "string",
#   "patientlocationid": 0,
#   "providerfirstname": "string",
#   "encountervisitname": "string",
#   "encounteramendments": [
#     {
#       "amendedclosedby": "string",
#       "amendedcloseddate": "string"
#     }
#   ],
#   "reviewedandsignedby": "string",
#   "reviewedandsigneddate": "string",
#   "additionalencountersignatures": [
#     {
#       "signedby": "string",
#       "scribedby": "string",
#       "signeddate": "string",
#       "scribeddate": "string"
#     }
#   ]
# }

module AthenaHealth
  class Encounter < BaseModel
    attribute :stage,                         String
    attribute :status,                        String
    attribute :diagnoses,                     Array[Diagnosis]
    attribute :closeddate,                    String
    attribute :closeduser,                    String
    attribute :providerid,                    Integer
    attribute :departmentid,                  Integer
    attribute :encounterid,                   Integer
    attribute :lastupdated,                   String
    attribute :lastreopened,                  String
    attribute :appointmentid,                 Integer
    attribute :providerphone,                 String
    attribute :encounterdate,                 String
    attribute :encountertype,                 String
    attribute :patientstatus,                 String
    attribute :patientstatusid,               Integer
    attribute :patientlocationid,             Integer
    attribute :providerlastname,              String
    attribute :providerfirstname,             String
    attribute :encounteramendments,           Array[EncounterAmendment]
    attribute :reviewedandsignedby,           String
    attribute :reviewedandsigneddate,         String
    attribute :additionalencountersignatures, Array[AdditionalEncounterSignature]
    attribute :patientlocation,               String
    attribute :encountervisitname,            String
  end
end
