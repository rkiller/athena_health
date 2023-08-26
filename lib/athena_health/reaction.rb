module AthenaHealth
  class Reaction < BaseModel
    attribute :reactionname,       String
    attribute :severity,           String
    attribute :severitysnomedcode, Integer
    attribute :snomedcode,         Integer
  end
end
