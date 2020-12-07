module AthenaHealth
  class Appointment < BaseModel
    attribute :appointmentconfirmationname, String
    attribute :appointmentid,               Integer
    attribute :appointmentnotes,            String
    attribute :appointmentstatus,           String
    attribute :appointmenttype,             String
    attribute :appointmenttypeid,           Integer
    attribute :cancelleddatetime,           String
    attribute :cancelreasonname,            String
    attribute :cancelreasonnoshow,          Boolean
    attribute :chargeentrynotrequired,	    Boolean
    attribute :checkindatetime,            	String
    attribute :checkoutdatetime,            String
    attribute :coordinatorenterprise,       Boolean
    attribute :copay,                      	String
    attribute :date,                        String
    attribute :departmentid,                Integer
    attribute :duration,                    Integer
    attribute :encounterid,					Integer
    attribute :encounterstatus,             String
    attribute :frozen,                      Boolean
    attribute :hl7providerid,              	Integer
    attribute :lastmodified,                String
    attribute :patient,                     Patient
    attribute :patientappointmenttypename,  String
    attribute :patientid,                   Integer
    attribute :patientlocationid,           Integer
    attribute :providerid,                  Integer
    attribute :renderingproviderid,        	Integer
    attribute :rescheduledappointmentid,    Integer
    attribute :scheduledby,                 String
    attribute :scheduleddatetime,           String
    attribute :starttime,                   String
    attribute :startcheckin,               	String
	attribute :stopcheckin,                	String
	attribute :stopintakedatetime,         	String
	attribute :stopexamdatetime,           	String
	attribute :startcheckoutdatetime,        String 
    attribute :templateappointmentid,       Integer
    attribute :urgent,                      Boolean

    def appointment_status
        {
          'f' => 'Future',
          'x' => 'Cancelled',
          'o' => 'Open',
          '2' => 'Checked in',
          '3' => 'Checked out',
          '4' => 'Charge entered'
        }[appointmentstatus]
    end

    def full_time
      "#{date} #{starttime}"
    end
  end
end
