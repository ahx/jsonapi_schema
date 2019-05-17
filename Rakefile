# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :version do
  puts Gem::Specification.load('jsonapi_schema.gemspec').version
end

task default: :spec
