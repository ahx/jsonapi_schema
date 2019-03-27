module JsonApiSchema
  module Source
    SCHEMA_PATH = File.expand_path('./source/schema.json', File.dirname(__FILE__))

    def self.schema_path
      SCHEMA_PATH
    end
  end
end
