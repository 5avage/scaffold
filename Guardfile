guard :minitest do
  # Minitest::Spec
  watch(%r{^spec/(.*)_spec\.rb})
  watch(%r{^app/(.*)\.rb})         { |m| "spec/#{File.basename(m[1])}_spec.rb" }
  watch(%r{^spec/setup\.rb})       { 'spec' }
  watch('app.rb')                  { 'spec' }
end
