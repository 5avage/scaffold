guard :minitest, :cli => 'minitest/pride' do
  # Minitest::Spec
  watch(%r{^spec/(.*)_spec\.rb})
  watch(%r{^app/(.*)\.rb})          { |m| "spec/#{File.basename(m[1])}_spec.rb" }
  watch(%r{^spec/spec_helper\.rb})  { 'spec' }
  watch('app.rb')                   { 'spec' }
end
