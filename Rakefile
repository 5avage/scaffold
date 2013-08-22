require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'app'
  t.libs << 'spec'
  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = true
end

desc 'Run Tests'
task :default => :test
