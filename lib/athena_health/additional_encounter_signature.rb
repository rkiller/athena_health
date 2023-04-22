#  {
#    "signedby": "string",
#    "scribedby": "string",
#    "signeddate": "string",
#    "scribeddate": "string"
#  }
module AthenaHealth
	class AdditionalEncounterSignature < BaseModel
		attribute :signedby,    String
		attribute :scribedby,   String
		attribute :signeddate,  String
		attribute :scribeddate, String
	end
end