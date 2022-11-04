# Lab Result:
# {
#   "actionnote": "string",
#   "alarmdays": "string",
#   "appointmentid": 0,
#   "assignedto": "string",
#   "createddate": "string",
#   "createddatetime": "string",
#   "createduser": "string",
#   "deleteddatetime": "string",
#   "departmentid": "string",
#   "description": "string",
#   "documentclass": "string",
#   "documentroute": "string",
#   "documentsource": "",
#   "documentsubclass": "string",
#   "documenttypeid": 0,
#   "encounterdate": "string",
#   "encounterid": "string",
#   "entitytype": "string",
#   "externalaccessionid": "string",
#   "externalnoteonly": "string",
#   "facilityid": 0,
#   "internalaccessionid": "string",
#   "internalnote": "string",
#   "interpretation": "string",
#   "interpretationtemplate": {
#     "interpretationtemplatename": "string",
#     "interpretationtemplatenote": "string",
#     "paragraphs": [
#       {
#         "paragraphname": "string",
#         "sentences": [
#           {
#             "findings": [
#               {
#                 "findingname": "string",
#                 "findingnote": "string",
#                 "findingtype": "string",
#                 "freetext": "string",
#                 "selectedoptions": [
#                   "string"
#                 ]
#               }
#             ],
#             "sentencename": "string",
#             "sentencenote": "string"
#           }
#         ]
#       }
#     ]
#   },
#   "isconfidential": "",
#   "isreviewedbyprovider": "",
#   "labresultid": 0,
#   "labresultloinc": "string",
#   "lastmodifieddate": "string",
#   "lastmodifieddatetime": "string",
#   "lastmodifieduser": "string",
#   "notefromlab": "string",
#   "observationdate": "string",
#   "observationdatetime": "string",
#   "observations": [
#     {
#       "abnormalflag": "string",
#       "analyteid": 0,
#       "analytename": "string",
#       "loinc": "string",
#       "note": "string",
#       "observationidentifier": "string",
#       "referencerange": "string",
#       "resultstatus": "string",
#       "units": "string",
#       "value": "string"
#     }
#   ],
#   "ordertype": "string",
#   "originaldocument": {
#     "contenttype": "string",
#     "href": "string"
#   },
#   "pages": [
#     {
#       "contenttype": "string",
#       "href": "string",
#       "pageid": "string",
#       "pageordering": "string"
#     }
#   ],
#   "patientnote": "string",
#   "performinglabaddress1": "string",
#   "performinglabaddress2": "string",
#   "performinglabcity": "string",
#   "performinglabname": "string",
#   "performinglabstate": "string",
#   "performinglabzip": "string",
#   "portalpublisheddatetime": "string",
#   "priority": "string",
#   "providerid": 0,
#   "providerusername": "string",
#   "receivedfacilityordercode": {
#     "code": "string",
#     "description": "string"
#   },
#   "reportstatus": "",
#   "resultcategory": "string",
#   "resultnotes": "string",
#   "resultstatus": "",
#   "status": "string",
#   "subject": "string",
#   "tiedtoprocedureorsurgery": "string",
#   "tietoorderid": 0
# }

module AthenaHealth
  class Document < BaseModel
    attribute :actionnote,            String
    attribute :adminid,               Integer
    attribute :alarmdays,             String
    attribute :appointmentid,         Integer
    attribute :assignedto,            String
    attribute :createddate,           String
    attribute :createddatetime,       String
    attribute :createduser,           String
    attribute :deleteddatetime,       String
    attribute :departmentid,          String
    attribute :description,           String
    attribute :documentclass,         String
    attribute :documentid,            Integer
    attribute :documentdescription,   String
    attribute :documentroute,         String
    attribute :documentsource,        String
    attribute :documentsubclass,      String
    attribute :documenttypeid,        Integer
    attribute :encounterdate,         String
    attribute :encounterid,           Integer
    attribute :entitytype,            String
    attribute :externalaccessionid,   String
    attribute :externalnoteonly,      String
    attribute :facilityid,            Integer
    attribute :internalaccessionid,   String
    attribute :internalnote,          String
    attribute :interpretation,        String
    attribute :isconfidential,        Boolean
    attribute :isreviewedbyprovider,  Boolean
    attribute :labresultid,           Integer
    attribute :lastmodifieddate,      String
    attribute :lastmodifieddatetime,  String
    attribute :lastmodifieduser,      String
    attribute :letterid,              Integer
    attribute :notefromlab,           String
    attribute :observationdate,       String
    attribute :observationdatetime,   String
    attribute :observations,          Array[Analyte]
    attribute :orderid,               Integer
    attribute :ordertype,             String
    attribute :pages,                 Array[DocumentPage]
    attribute :prescriptionid,        Integer
    attribute :providerid,            Integer
    attribute :priority,              Integer
    attribute :status,                String
  end
end
