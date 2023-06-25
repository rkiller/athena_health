# {
#  "note": "string",
#  "ircid": 0,
#  "copays": [
#    {
#      "copaytype": 0,
#      "copayamount": "string"
#    }
#  ],
#  "ircname": "string",
#  "cancelled": "string",
#  "icd9codes": [
#    0
#  ],
#  "issuedate": "string",
#  "employerid": "string",
#  "icd10codes": [
#    "string"
#  ],
#  "insuredpcp": "string",
#  "adjusterfax": "string",
#  "ccmstatusid": 0,
#  "insuranceid": "string",
#  "lastupdated": "string",
#  "policynumber": "string",
#  "repricername": "string",
#  "adjusterphone": "string",
#  "ccmstatusname": "string",
#  "insurancetype": "string",
#  "insuredpcpnpi": 0,
#  "lastupdatedby": "string",
#  "repricerphone": "string",
#  "caseinjurydate": "string",
#  "expirationdate": "string",
#  "insurancephone": "string",
#  "sequencenumber": 0,
#  "injuredbodypart": "string",
#  "insuredidnumber": "string",
#  "adjusterlastname": "string",
#  "slidingfeeplanid": 0,
#  "adjusterfirstname": "string",
#  "autoaccidentstate": "string",
#  "eligibilityreason": "string",
#  "eligibilitystatus": "string",
#  "insuranceidnumber": "string",
#  "insuranceplanname": "string",
#  "casepolicytypename": "string",
#  "coinsurancepercent": 0,
#  "eligibilitymessage": "string",
#  "insurancepackageid": 0,
#  "descriptionofinjury": "string",
#  "insurancepackagezip": "string",
#  "insuredentitytypeid": 0,
#  "insuranceclaimnumber": "string",
#  "insurancepackagecity": "string",
#  "insuranceproducttype": "string",
#  "insurancepackagestate": "string",
#  "insurancepolicyholder": "string",
#  "relatedtoemploymentyn": "",
#  "relationshiptoinsured": "Self",
#  "stateofreportedinjury": "string",
#  "eligibilitylastchecked": "string",
#  "relatedtoautoaccidentyn": "",
#  "relationshiptoinsuredid": 1,
#  "insurancepackageaddress1": "string",
#  "insurancepackageaddress2": "string",
#  "insuranceplandisplayname": "string",
#  "insurancepolicyholderdob": "string",
#  "insurancepolicyholdersex": "string",
#  "insurancepolicyholderssn": "string",
#  "insurancepolicyholderzip": "string",
#  "insuredreferringprovider": "string",
#  "relatedtootheraccidentyn": "",
#  "anotherpartyresponsibleyn": "",
#  "insurancepolicyholdercity": "string",
#  "insurancepolicyholderstate": "string",
#  "insurancepolicyholdersuffix": "string",
#  "insurancepolicyholderaddress1": "string",
#  "insurancepolicyholderaddress2": "string",
#  "insurancepolicyholderlastname": "string",
#  "insurancepolicyholderfirstname": "string",
#  "insurancepolicyholdermiddlename": "string",
#  "insurancepolicyholdercountrycode": "string",
#  "insurancepolicyholdercountryiso3166": "string"
#}

module AthenaHealth
  class Insurance < BaseModel
    attribute :affiliations,                        Array
    attribute :insuranceplanname,                   String
    attribute :insurancepackageid,                  Integer
    attribute :addresslist,                         Array
    attribute :insurancepolicyholdercountrycode,    String
    attribute :sequencenumber,                      Integer
    attribute :insurancetype,                       String
    attribute :insuredpcpnpi,                       String
    attribute :insurancepolicyholder,               String
    attribute :insurancepolicyholderfirstname,      String
    attribute :insurancepolicyholderlastname,       String
    attribute :insurancepolicyholderdob,            String
    attribute :insurancepolicyholdersex,            String
    attribute :insurancepolicyholdercountryiso3166, String
    attribute :insurancephone,                      String
    attribute :insuranceid,                         Integer
    attribute :insuranceidnumber,                   String
    attribute :relationshiptoinsuredid,             Integer
    attribute :eligibilitylastchecked,              String
    attribute :relationshiptoinsured,               String
    attribute :eligibilitystatus,                   String
    attribute :eligibilityreason,                   String
    attribute :eligibilitymessage,                  String
    attribute :ircname,                             String
    attribute :lastupdated,                         String
    attribute :lastupdatedby,                       String
    attribute :coinsurancepercent,                  Integer
    attribute :insurancepackagecity,                String
    attribute :insurancepackagestate,               String
    attribute :insurancepackagezip,                 String

    #
    # New Insurance Attributes - RK
    #
    attribute :policynumber,                        String
    attribute :insurancepolicyholdermiddlename,     String
    attribute :insurancepolicyholderssn,            String
    attribute :insurancepolicyholderaddress1,       String
    attribute :insurancepolicyholdercity,           String
    attribute :insurancepolicyholderstate,          String
    attribute :insurancepolicyholderzip,            String
    attribute :cancelled,                           String

    # Occupational Medicine
    attribute :employerid,                          String
    attribute :casepolicytypename,                  String
    attribute :caseinjurydate,                      String
    attribute :caseinjurydate,                      String
    attribute :injuredbodypart,                     String
    attribute :descriptionofinjury,                 String
    attribute :insuredidnumber,                     String
    attribute :adjusterfirstname,                   String
    attribute :adjusterlastname,                    String
    attribute :adjusterphone,                       String
    attribute :adjusterfax,                         String
    attribute :ccmstatusid,                         Integer
    attribute :repricername,                        String
    attribute :repricerphone,                       String
    attribute :ccmstatusname,                       String
    attribute :autoaccidentstate,                   String
    attribute :insuranceclaimnumber,                String
    attribute :relatedtoemploymentyn,               String
    attribute :relatedtoautoaccidentyn,             String
    attribute :relatedtootheraccidentyn,            String
    attribute :anotherpartyresponsibleyn,           String
    attribute :stateofreportedinjury,               String

  end
end
