require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.pattern = "test/test_*.rb"
end

task :start do
  ruby 'triangle-classification/triangle_classifier.rb'
end
