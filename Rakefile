require 'bundler/setup'
require_relative './lib/riot_api/version'

namespace :ruby do
  Bundler::GemHelper.install_tasks(:name => 'riotapi')
end

require "rspec/core/rake_task"

desc "Run all specs"
RSpec::Core::RakeTask.new('spec')

desc "Print specdocs"
RSpec::Core::RakeTask.new(:doc) do |t|
  t.rspec_opts = ["--format", "specdoc", "--dry-run"]
  t.pattern = 'spec/**/*_spec.rb'
end

task :default do
  sh 'rake -T'
end

def alias_task(alias_task, original)
  desc "Alias for rake #{original}"
  task alias_task, Rake.application[original].arg_names => original
end
alias_task(:test, :spec)

require 'rdoc/task'

Rake::RDocTask.new do |t|
  t.rdoc_dir = 'rdoc'
  t.title    = "rest-client, fetch RESTful resources effortlessly"
  t.options << '--line-numbers' << '--inline-source' << '-A cattr_accessor=object'
  t.options << '--charset' << 'utf-8'
  t.rdoc_files.include('README.md')
  t.rdoc_files.include('lib/*.rb')
end