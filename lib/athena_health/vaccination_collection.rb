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
	class VaccinationCollection < BaseModel
		attribute :vaccines,                 Array[Vaccination]
		attribute :vaccinesectionnote,       String
	end
end