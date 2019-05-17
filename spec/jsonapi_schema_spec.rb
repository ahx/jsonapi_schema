# frozen_string_literal: true

require 'json'

RSpec.describe JsonapiSchema do
  it 'has a version number' do
    expect(JsonapiSchema::VERSION).not_to be nil
  end

  it 'has a MEDIA_TYPE constant' do
    expect(JsonapiSchema::MEDIA_TYPE).not_to be nil
  end

  describe '.schema_path' do
    it 'returns the path to the JSON Schema' do
      path = JsonapiSchema.schema_path
      expect(File.exist?(path)).to be true
      expect(path).to start_with '/'
      schema = JSON.parse(File.read(path))
      expect(schema['title'] == 'JSON:API Schema')
    end
  end

  describe '.schema' do
    it 'returns the parsed object' do
      schema = JsonapiSchema.schema
      expect(schema['title'] == 'JSON:API Schema')
    end
  end
end
