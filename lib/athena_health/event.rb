#       "events": [
#         {
#           "note": "string",
#           "source": "string",
#           "status": "string",
#           "enddate": "string",
#           "createdby": "string",
#           "diagnoses": [
#             {
#               "code": "string",
#               "name": "string",
#               "codeset": "string"
#             }
#           ],
#           "eventtype": "string",
#           "onsetdate": "string",
#           "startdate": "string",
#           "laterality": "string",
#           "createddate": "string",
#           "encounterdate": "string"
#         }
#       ],

module AthenaHealth
  class Event < BaseModel
    attribute :note,            String
    attribute :source,          String
    attribute :status,          String
    attribute :enddate,         String
    attribute :createdby,       String
    attribute :diagnoses,       Array[Diagnosis]
    attribute :eventtype,       String
    attribute :type,            String
    attribute :eventdate,       String
    attribute :onsetdate,       String
    attribute :startdate,       String
    attribute :laterality,      String
    attribute :createddate,     String
    attribute :encounterdate,   String
    attribute :userdisplayname, String
  end
end
