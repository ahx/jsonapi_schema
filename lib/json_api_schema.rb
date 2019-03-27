require 'json_api_schema/version'

module JsonApiSchema
  SCHEMA_PATH = File.expand_path(
    './json_api_schema/source/schema.json',
    File.dirname(__FILE__)
  )

  def self.schema_path
    SCHEMA_PATH
  end
end
