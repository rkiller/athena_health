module AthenaHealth
  class Letter < BaseModel
  	attribute :priority,			 	Integer
    attribute :recipientname,			String
    attribute :createfromorderid,       Integer
    attribute :documentclass,          	String
    attribute :createddatetime,         String
    attribute :departmentid,            Integer
    attribute :patientid,              	Integer
    attribute :encounterid,           	Integer
    attribute :documentroute,        	String
    attribute :documentsource,	      	String
    attribute :createddate,        		String
    attribute :status,       			String
    attribute :documentdescription,     String
    attribute :providerid,              Integer
    attribute :letterid,  				Integer
    attribute :lastmodifieddatetime,    String
    attribute :documentsubclass,     	String
  end
end