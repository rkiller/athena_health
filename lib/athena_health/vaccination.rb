# {
#   "vaccines": [
#     {
#       "cvx": 0,
#       "mvx": "string",
#       "ndc": "string",
#       "units": "string",
#       "amount": 0,
#       "status": "string",
#       "enteredby": "string",
#       "genusname": "string",
#       "lotnumber": "string",
#       "orderedby": "string",
#       "vaccineid": "string",
#       "approvedby": "string",
#       "submitdate": "string",
#       "vaccinator": "string",
#       "deleteddate": "string",
#       "description": "string",
#       "entereddate": "string",
#       "ordereddate": "string",
#       "refuseddate": "string",
#       "refusednote": "string",
#       "vaccinetype": "string",
#       "approveddate": "string",
#       "visgivendate": "string",
#       "refusedreason": "string",
#       "administerdate": "string",
#       "administernote": "string",
#       "administersite": "string",
#       "declinedreason": [
#         {
#           "code": "string",
#           "codeset": "string",
#           "description": "string"
#         }
#       ],
#       "expirationdate": "string",
#       "prescribeddate": "string",
#       "administerroute": "string",
#       "declinedreasontext": "string",
#       "clinicalorderclasses": [
#         {
#           "name": "string",
#           "clinicalorderclassid": 0
#         }
#       ],
#       "partiallyadministered": "",
#       "contraindicationreason": [
#         {
#           "code": "string",
#           "codeset": "string",
#           "description": "string"
#         }
#       ],
#       "administerroutedescription": "string",
#       "vaccineinformationstatements": [
#         {
#           "dateonvis": "string",
#           "clinicalorderclassid": 0
#         }
#       ]
#     }
#   ],
#   "vaccinesectionnote": "string"
# }

module AthenaHealth
  class Vaccination < BaseModel
    attribute :cvx,                        Integer
    attribute :mvx,                        String
    attribute :ndc,                        String
    attribute :units,                      String
    attribute :amount,                     Integer
    attribute :status,                     String
    attribute :enteredby,                  String
    attribute :genusname,                  String
    attribute :lotnumber,                  String
    attribute :orderedby,                  String
    attribute :vaccineid,                  String
    attribute :approvedby,                 String
    attribute :submitdate,                 String
    attribute :vaccinator,                 String
    attribute :deleteddate,                String
    attribute :description,                String
    attribute :entereddate,                String
    attribute :ordereddate,                String
    attribute :refuseddate,                String
    attribute :refusednote,                String
    attribute :vaccinetype,                String
    attribute :approveddate,               String
    attribute :visgivendate,               String
    attribute :refusedreason,              String
    attribute :administerdate,             String
    attribute :administernote,             String
    attribute :administersite,             String
    attribute :expirationdate,             String
    attribute :prescribeddate,             String
    attribute :administerroute,            String
    attribute :declinedreasontext,         String
    attribute :partiallyadministered,      String
    attribute :administerroutedescription, String

  end
end
