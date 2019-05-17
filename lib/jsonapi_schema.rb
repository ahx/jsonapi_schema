# frozen_string_literal: true

require 'json'

module JsonapiSchema
  MEDIA_TYPE = 'application/vnd.api+json'

  SCHEMA_PATH = File.expand_path(
    './jsonapi_schema/source/schema.json',
    File.dirname(__FILE__)
  )

  def self.schema_path
    SCHEMA_PATH
  end

  def self.schema
    @schema ||= JSON.parse(File.read(schema_path))
  end
end
