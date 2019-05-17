require 'multi_json'

module JsonapiSchema
  MEDIA_TYPE = 'application/vnd.api+json'.freeze

  SCHEMA_PATH = File.expand_path(
    './jsonapi_schema/source/schema.json',
    File.dirname(__FILE__)
  )

  def self.schema_path
    SCHEMA_PATH
  end

  def self.schema
    @schema ||= MultiJson.load(File.read(schema_path))
  end
end
