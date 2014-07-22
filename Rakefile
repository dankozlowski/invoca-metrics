require "bundler/gem_tasks"

require 'rake/testtask'

namespace :test do

  Rake::TestTask.new do |t|
    t.name = :unit
    t.libs << "test"
    t.pattern = 'test/unit/invoca/**/*_test.rb'
    t.verbose = true
  end
  Rake::Task['test:unit'].comment = "Run the unit tests in test/unit"

end

task :default => 'test:unit'