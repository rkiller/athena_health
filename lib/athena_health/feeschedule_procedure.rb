module AthenaHealth
	# {
	#   "fee": 0,
	#   "feeexists": "",
	#   "description": "string",
	#   "servicedate": "string",
	#   "departmentid": 0,
	#   "procedurecode": "string",
	#   "insurancepackageid": 0,
	#   "procedurecodegroupid": 0,
	#   "procedurecodegroupname": "string"
	# }
	class FeescheduleProcedure < BaseModel
		attribute :fee,                   Float
		attribute :feeexists,             String
		attribute :description,           String
		attribute :servicedate,           String
		attribute :departmentid,          Integer
		attribute :procedurecode,         String
		attribute :insurancepackageid,    Integer
		attribute :procedurecodegroupid,  Integer
		attribute :procedurecodegroupname,String
	end
end