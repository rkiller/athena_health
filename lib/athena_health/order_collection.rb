# {
#   "orders": [
#     {
#       "ndc": "string",
#       "class": "string",
#       "status": "string",
#       "orderid": 0,
#       "refills": "string",
#       "priority": 0,
#       "ordertype": "string",
#       "providerid": 0,
#       "createduser": "string",
#       "dateordered": "string",
#       "description": "string",
#       "ordertypeid": 0,
#       "assigneduser": "string",
#       "departmentid": 0,
#       "diagnosislist": [
#         {
#           "diagnosiscode": {
#             "code": "string",
#             "codeset": "string",
#             "description": "string"
#           },
#           "snomedicdcodes": [
#             {
#               "code": "string",
#               "codeset": "string",
#               "description": "string",
#               "unstrippeddiagnosiscode": "string"
#             }
#           ]
#         }
#       ],
#       "externalcodes": [
#         {
#           "code": "string",
#           "codeset": "string",
#           "description": "string"
#         }
#       ],
#       "quantityvalue": "string",
#       "declinedreason": [
#         {
#           "code": "string",
#           "codeset": "string",
#           "description": "string"
#         }
#       ],
#       "lastmodifiedby": "string",
#       "classdescription": "string",
#       "clinicalprovider": {
#         "zip": 0,
#         "city": "string",
#         "name": "string",
#         "state": "string",
#         "address1": "string",
#         "address2": "string",
#         "clianumber": "string",
#         "phonenumber": "string",
#         "faxphonenumber": "string",
#         "clinicalproviderid": "string"
#       },
#       "earliestfilldate": "string",
#       "futuresubmitdate": "string",
#       "orderingprovider": "string",
#       "documentationonly": "",
#       "facilityordercode": {
#         "code": "string",
#         "description": "string"
#       },
#       "clinicalproviderid": 0,
#       "declinedreasontext": "string",
#       "clinicalprovidername": "string",
#       "lastmodifieddatetime": "string",
#       "contraindicationreason": [
#         {
#           "code": "string",
#           "codeset": "string",
#           "description": "string"
#         }
#       ],
#       "specimencollectionsite": "string"
#     }
#   ],
#   "diagnosis": "string",
#   "diagnosisicd": [
#     {
#       "code": "string",
#       "codeset": "string",
#       "description": "string"
#     }
#   ],
#   "diagnosissnomed": 0
# }
module AthenaHealth
  class OrderCollection < BaseCollection
    attribute :orders,          Array[Order]
    attribute :diagnosis,       String
    attribute :diagnosissnomed, String
  end
end
