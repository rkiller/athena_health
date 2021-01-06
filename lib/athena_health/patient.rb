# patient.rb
#
# Sample Response (1.2.21):
# {
#   "address1": "string",
#   "address2": "string",
#   "agriworker": "string",
#   "agriworkertypes": "string",
#   "allpatientstatuses": [
#     {
#       "departmentid": 0,
#       "primaryproviderid": "string",
#       "status": "string"
#     }
#   ],
#   "altfirstname": "string",
#   "assignedsexatbirth": "string",
#   "balances": [
#     {
#       "balance": "string",
#       "cleanbalance": true,
#       "collectionsbalance": "string",
#       "contracts": [
#         {
#           "availablebalance": "string",
#           "epaymentcontractclassid": "string",
#           "maxamount": "string"
#         }
#       ],
#       "departmentlist": "string",
#       "paymentplanbalance": "string",
#       "providergroupid": 0
#     }
#   ],
#   "caresummarydeliverypreference": "string",
#   "city": "string",
#   "claimbalancedetails": [
#     {
#       "claimdetails": [
#         {
#           "amount": 0,
#           "chargeleveldetail": [
#             {
#               "amount": 0,
#               "description": "string",
#               "fromdate": "string",
#               "id": 0,
#               "printprocedurecode": "string",
#               "procedurecode": "string",
#               "procedurecodeothermodifier": "string",
#               "transactions": [
#                 {
#                   "amount": 0,
#                   "description": 0,
#                   "epaymentid": 0,
#                   "fromdate": "string",
#                   "id": 0,
#                   "parentchargetransfertype": "string",
#                   "type": "string"
#                 }
#               ]
#             }
#           ],
#           "claimid": 0,
#           "cleanbalance": true,
#           "departmentid": 0,
#           "outstandingp": 0,
#           "servicedate": "string",
#           "supervisingproviderid": 0
#         }
#       ],
#       "departmentids": "string",
#       "providergroupid": 0
#     }
#   ],
#   "confidentialitycode": "string",
#   "consenttocallflag": true,
#   "consenttotextyn": true,
#   "contactname": "string",
#   "contactphone1": "string",
#   "contactphone2": "string",
#   "contactpref_announcement_email": true,
#   "contactpref_announcement_phone": true,
#   "contactpref_announcement_sms": true,
#   "contactpref_appointment_email": true,
#   "contactpref_appointment_phone": true,
#   "contactpref_appointment_sms": true,
#   "contactpref_billing_email": true,
#   "contactpref_billing_phone": true,
#   "contactpref_billing_sms": true,
#   "contactpref_lab_email": true,
#   "contactpref_lab_phone": true,
#   "contactpref_lab_sms": true,
#   "contactpreference": "string",
#   "contactrelationship": "string",
#   "countrycode": "string",
#   "countryiso3166": "string",
#   "currentdepartmentid": "string",
#   "customfields": [
#     {
#       "recordnumbercategoryid": "string",
#       "recordnumberselectid": "string",
#       "value": "string"
#     }
#   ],
#   "deceaseddate": "string",
#   "defaultpharmacyncpdpid": "string",
#   "dob": "string",
#   "donotcallyn": true,
#   "driverslicenseurl": "string",
#   "driverslicenseyn": true,
#   "email": "string",
#   "emailexistsyn": true,
#   "employeraddress": "string",
#   "employercity": "string",
#   "employerfax": "string",
#   "employerid": "string",
#   "employername": "string",
#   "employerphone": "string",
#   "employerstate": "string",
#   "employerzip": "string",
#   "ethnicityid": "string",
#   "firstappointment": "string",
#   "firstname": "string",
#   "genderidentity": "string",
#   "genderidentityother": "string",
#   "guardianfirstname": "string",
#   "guardianlastname": "string",
#   "guardianmiddleinitial": "string",
#   "guardiannamesuffix": "string",
#   "hasmobileyn": "string",
#   "hierarchicalcode": "string",
#   "homeboundyn": true,
#   "homeless": "string",
#   "homelesstypes": "string",
#   "id": "string",
#   "industryid": "string",
#   "insurances": [
#     {
#       "adjusterfax": "string",
#       "adjusterfirstname": "string",
#       "adjusterlastname": "string",
#       "adjusterphone": "string",
#       "anotherpartyresponsibleyn": true,
#       "autoaccidentstate": "string",
#       "cancelled": "string",
#       "caseinjurydate": "string",
#       "casenumber": "string",
#       "casepolicytypename": "string",
#       "ccmstatusid": 0,
#       "ccmstatusname": "string",
#       "coinsurancepercent": 0,
#       "copays": [
#         {
#           "copayamount": "string",
#           "copaytype": 0
#         }
#       ],
#       "diagnosiscodes": [
#         0
#       ],
#       "diagnosiscodesicd10": [
#         "string"
#       ],
#       "eligibilitylastchecked": "string",
#       "eligibilitymessage": "string",
#       "eligibilityreason": "string",
#       "eligibilitystatus": "string",
#       "employerid": "string",
#       "expirationdate": "string",
#       "id": "string",
#       "injuredbodypart": "string",
#       "injurydescription": "string",
#       "insuranceidnumber": "string",
#       "insurancepackageaddress1": "string",
#       "insurancepackageaddress2": "string",
#       "insurancepackagecity": "string",
#       "insurancepackageid": 0,
#       "insurancepackagestate": "string",
#       "insurancepackagezip": "string",
#       "insurancephone": "string",
#       "insuranceplanname": "string",
#       "insurancepolicyholder": "string",
#       "insurancetype": "string",
#       "insuredaddress": "string",
#       "insuredaddress2": "string",
#       "insuredcity": "string",
#       "insuredcountrycode": "string",
#       "insuredcountryiso3166": "string",
#       "insureddob": "string",
#       "insuredentitytypeid": 0,
#       "insuredfirstname": "string",
#       "insuredlastname": "string",
#       "insuredmiddleinitial": "string",
#       "insurednamesuffix": "string",
#       "insuredpcp": "string",
#       "insuredpcpnpi": 0,
#       "insuredsex": "string",
#       "insuredssn": "string",
#       "insuredstate": "string",
#       "insuredzip": "string",
#       "ircname": "string",
#       "issuedate": "string",
#       "policynumber": "string",
#       "relatedtoautoaccidentyn": true,
#       "relatedtoemploymentyn": true,
#       "relatedtootheraccidentyn": true,
#       "relationshiptoinsured": "string",
#       "relationshiptoinsuredid": 0,
#       "repricername": "string",
#       "repricerphone": "string",
#       "sequencenumber": 0,
#       "slidingfeeplanid": 0,
#       "superpackagename": "string",
#       "workcompstate": "string"
#     }
#   ],
#   "lastappointment": "string",
#   "lastemail": "string",
#   "lastname": "string",
#   "licenseexpirationdate": "string",
#   "licensenumber": "string",
#   "licensestateid": "string",
#   "localpatientid": "string",
#   "maritalstatus": "string",
#   "maritalstatusid": "string",
#   "medicationhistoryconsentflag": true,
#   "middleinitial": "string",
#   "mobilecarrierid": "string",
#   "name": "string",
#   "namesuffix": "string",
#   "nextkinname": "string",
#   "nextkinphone": "string",
#   "nextkinrelationship": "string",
#   "notes": "string",
#   "occupationid": "string",
#   "onlinestatementonlyyn": "string",
#   "patientblocked": true,
#   "patientphotourl": "string",
#   "patientphotoyn": true,
#   "portalaccessyn": "string",
#   "portalsignatureonfileflag": true,
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
#   ],
#   "portaltermsonfileflag": true,
#   "preferredname": "string",
#   "preferredpronouns": "string",
#   "previouspatientids": [
#     0
#   ],
#   "primarylanguageid": "string",
#   "primaryproviderid": "string",
#   "privacyinformationverifiedflag": true,
#   "privilegedcommunication": true,
#   "publichousing": "string",
#   "raceids": "string",
#   "referralsourceid": "string",
#   "referralsourceother": "string",
#   "registrationdate": "string",
#   "registrationdepartmentid": "string",
#   "relationshiptopatientid": "string",
#   "restrictedpatientrecord": true,
#   "rpaddress": "string",
#   "rpaddress2": "string",
#   "rpcity": "string",
#   "rpcountrycode": "string",
#   "rpcountryiso3166": "string",
#   "rpdob": "string",
#   "rpemail": "string",
#   "rpemployerid": "string",
#   "rpfirstname": "string",
#   "rplastname": "string",
#   "rpmiddleinitial": "string",
#   "rpnamesuffix": "string",
#   "rpphone": "string",
#   "rpssn": "string",
#   "rpstate": "string",
#   "rpzip": "string",
#   "sameaddressflag": true,
#   "schoolbased": "string",
#   "sex": "string",
#   "sexualorientation": "string",
#   "sexualorientationother": "string",
#   "ssn": "string",
#   "state": "string",
#   "status": "string",
#   "translatedhomephoneindex": "string",
#   "translatedmobilephoneindex": "string",
#   "translatedworkphoneindex": "string",
#   "unconffamilysizedeclinedyn": "string",
#   "unconfincomerangedeclinedyn": "string",
#   "unconfirmedfamilysize": "string",
#   "unconfirmedfederalpovertylevel": 0,
#   "unconfirmedincomedeclinedyn": "string",
#   "unconfirmedincomeperpayperiod": "string",
#   "unconfirmedpayperiod": "string",
#   "veteranstatus": "string",
#   "zip": "string"
# }

module AthenaHealth
  class Patient < BaseModel
    attribute :email,                                String
    attribute :emailexistsyn,                        Boolean
    attribute :occupationcode,                       String
    attribute :departmentid,                         Integer
    attribute :homephone,                            String
    attribute :homebound,                            Boolean
    attribute :guarantorstate,                       String
    attribute :portalaccessyn,                       String
    attribute :portalsignatureonfileflag,            Boolean
    attribute :portaltermsonfileflag,                Boolean
    attribute :driverslicenseyn,                     Boolean
    attribute :driverslicenseurl,                    String
    attribute :licenseexpirationdate,                String
    attribute :licensenumber,                        String
    attribute :licensestateid,                       String
    attribute :workphone,                            String
    attribute :ethnicitycode,                        String
    attribute :industrycode,                         String
    attribute :contacthomephone,                     String
    attribute :contactrelationship,                  String
    attribute :contactname,                          String
    attribute :contactpreference_appointment_sms,    Boolean
    attribute :contactpreference_appointment_email,  Boolean
    attribute :contactpreference_billing_phone,      Boolean
    attribute :contactpreference_announcement_phone, Boolean
    attribute :contactpreference_lab_sms,            Boolean
    attribute :contactpreference_lab_phone,          Boolean
    attribute :contactpreference_lab_email,          Boolean
    attribute :contactpreference_announcement_sms,   Boolean
    attribute :contactpreference_announcement_email, Boolean
    attribute :contactpreference_appointment_phone,  Boolean
    attribute :contactpreference_billing_sms,        Boolean
    attribute :contactpreference_billing_email,      Boolean
    attribute :firstappointment,                     String
    attribute :lastappointment,                      String
    attribute :patientphotourl,                      String
    attribute :patientphotoyn,                       Boolean
    attribute :mobilecarrierid,                      Integer
    attribute :guarantorssn,                         String
    attribute :guarantordob,                         String
    attribute :zip,                                  String
    attribute :guarantoraddresssameaspatient,        Boolean
    attribute :contactmobilephone,                   String
    attribute :contactpreference,                    String
    attribute :nextkinphone,                         String
    attribute :nextkinrelationship,                  String
    attribute :nextkinname,                          String
    attribute :status,                               String
    attribute :lastname,                             String
    attribute :guarantorfirstname,                   String
    attribute :city,                                 String
    attribute :ssn,                                  String
    attribute :guarantoremail,                       String
    attribute :guarantorcity,                        String
    attribute :guarantorzip,                         String
    attribute :privacyinformationverified,           Boolean
    attribute :primarydepartmentid,                  Integer
    attribute :balances,                             Array[Balance]
    attribute :race,                                 Array
    attribute :racename,                             String
    attribute :language6392code,                     String
    attribute :primaryproviderid,                    Integer
    attribute :povertylevelincomedeclined,           Boolean
    attribute :povertylevelfamilysizedeclined,       Boolean
    attribute :caresummarydeliverypreference,        Boolean
    attribute :guarantorlastname,                    Boolean
    attribute :suffix,                               String
    attribute :firstname,                            String
    attribute :middlename,                           String
    attribute :preferredname,                        String
    attribute :maritalstatus,                        String
    attribute :maritalstatusid,                      String
    attribute :sex,                                  String
    attribute :hasmobile,                            Boolean
    attribute :mobilephone,                          String
    attribute :onlinestatementonly,                  Boolean
    attribute :notes,                                String
    attribute :guarantorcountrycode,                 String
    attribute :state,                                String
    attribute :patientid,                            Integer
    attribute :referralsourceid,                     Integer
    attribute :dob,                                  String
    attribute :guarantorrelationshiptopatient,       Integer
    attribute :address1,                             String
    attribute :address2,                             String
    attribute :guarantorphone,                       String
    attribute :countrycode,                          String
    attribute :guarantoraddress1,                    String
    attribute :guarantoraddress2,                    String
    attribute :consenttocall,   	                 Boolean
    attribute :consenttotext,	                     Boolean
    attribute :donotcallyn,                          Boolean
    attribute :onlinestatementonlyyn,                String
    attribute :countrycode3166,                      String
    attribute :guarantorcountrycode3166,             String
    attribute :lastemail,                            String
    attribute :guarantorsuffix,                      String
    attribute :guarantoremployerid,                  Integer
    attribute :employeraddress,                      String
    attribute :employercity,                         String
    attribute :employerfax,                          String
    attribute :employerid,                           Integer
    attribute :employername,                         String
    attribute :employerphone,                        String
    attribute :employerstate,                        String
    attribute :employerzip,                          String

    attribute :portalstatus,                         Array[PortalStatus]
    attribute :claimbalancedetails,                  Array[Claim]

    def fullname
      "#{firstname} #{middlename} #{lastname}"
    end
  end
end
