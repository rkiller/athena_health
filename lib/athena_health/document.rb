module AthenaHealth
  class Document < BaseModel
  	attribute :documentid,			 Integer
    attribute :letterid,             Integer
    attribute :prescriptionid,       Integer
    attribute :encounterid,          Integer
    attribute :providerid,           Integer
    attribute :priority,             Integer
    attribute :adminid,              Integer
    attribute :assignedto,           String
    attribute :documentclass,        String
    attribute :createddatetime,      String
    attribute :documentroute,        String
    attribute :documentsource,       String
    attribute :createddate,          String
    attribute :status,               String
    attribute :documentdescription,  String
    attribute :encounterdate,        String
    attribute :lastmodifieddatetime, String
    attribute :documentsubclass,     String
    attribute :internalnote,		 String
    attribute :orderid,              Integer
    attribute :labresultid,          Integer
    attribute :observations,         Array[Analyte]
    attribute :pages,                Array[DocumentPage]
  end
end
