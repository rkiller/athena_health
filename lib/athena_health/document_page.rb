module AthenaHealth
  class DocumentPage < BaseModel
    attribute :pageordering,   Integer
    attribute :href,           String
    attribute :pageid,         String
    attribute :contenttype,    String
  end
end