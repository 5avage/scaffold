require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'app'
  t.libs << 'spec'
  t.test_files = ['spec/spec_helper.rb'] + FileList['spec/*_spec.rb']
  t.verbose = true
end

desc 'Run Tests'
task :default => :test
