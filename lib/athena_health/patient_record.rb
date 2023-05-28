# {
#   "patientrecords": [
#     {
#       "priority": 2,
#       "status": "CLOSED",
#       "documentdescription": "patient record",
#       "documentclass": "PATIENTRECORD",
#       "createddatetime": "2017-08-09T16:43:25-04:00",
#       "departmentid": "1",
#       "patientrecordid": 997,
#       "lastmodifieddatetime": "2017-08-11T20:20:37-04:00",
#       "documentroute": "FAX",
#       "documentsource": "SYSTEM",
#       "createddate": "08/09/2017"
#     },
#  ...
# }


module AthenaHealth
	class PatientRecord < BaseModel
		attribute :priority,            Integer
		attribute :status,              String
		attribute :documentdescription, String
		attribute :documentclass,       String
		attribute :createddatetime,     DateTime
		attribute :departmentid,        String
		attribute :patientrecordid,     Integer
		attribute :lastmodifieddatetime,String
		attribute :documentroute,       String
		attribute :documentsource,      String
		attribute :createddate,         Date
	end
end
