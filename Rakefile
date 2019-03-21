require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :version do
  puts Gem::Specification.load('json_api_schema-source.gemspec').version
end

task :default => :spec
