module AthenaHealth
  class Balance < BaseModel
    attribute :balance,         Float
    attribute :departmentlist,  String
    attribute :providergroupid, Integer
    attribute :cleanbalance,    Boolean
  end
end
