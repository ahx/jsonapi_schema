require 'json'

RSpec.describe JsonApiSchema::Source do
  it "has a version number" do
    expect(JsonApiSchema::Source::VERSION).not_to be nil
  end

  describe '#file_path' do
    it 'returns the path to the JSON Schema' do
      path = JsonApiSchema::Source.schema_path
      expect(File.exist?(path)).to be true
      expect(path).to start_with '/'
      schema = JSON.parse(File.read(path))
      expect(schema['title'] == "JSON:API Schema")
    end
  end
end
