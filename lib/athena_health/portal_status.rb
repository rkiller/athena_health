#   "portalstatus": [
#     {
#       "blockedfailedloginsyn": "string",
#       "entitytodisplay": "string",
#       "familyblockedfailedloginsyn": "string",
#       "familyregisteredyn": "string",
#       "finalstatus": "string",
#       "lastlogindate": "string",
#       "lastloginentity": "string",
#       "noportalyn": "string",
#       "portalregistrationdate": "string",
#       "registeredyn": "string",
#       "termsaccepted": true
#     }
#   ]

module AthenaHealth
	class PortalStatus < BaseModel
		attribute :blockedfailedloginsyn, 				String
		attribute :entitytodisplay, 			        String
		attribute :familyblockedfailedloginsyn, 	String
		attribute :familyregisteredyn, 			      String
		attribute :finalstatus, 			            String
		attribute :lastlogindate,	                String
		attribute :lastloginentity,					      String
		attribute :noportalyn,					          String
		attribute :portalregistrationdate,				String
		attribute :registeredyn,					        String
		attribute :termsaccepted,					        Boolean
	end
end