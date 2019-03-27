require 'json_api_schema/version'

module JsonApiSchema
  MEDIA_TYPE = 'application/vnd.api+json'.freeze

  SCHEMA_PATH = File.expand_path(
    './json_api_schema/source/schema.json',
    File.dirname(__FILE__)
  )

  def self.schema_path
    SCHEMA_PATH
  end
end
