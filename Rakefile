require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.pattern = "test/test_*.rb"
end

task :start do
  ruby 'kata/triangle_classifier.rb'
end
