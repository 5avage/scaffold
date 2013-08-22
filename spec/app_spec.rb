require_relative 'spec_helper'

describe 'Scaffold::App' do

  it 'should have a test setting' do
    Scaffold::settings.test_setting.must_equal 'test'
  end

end

