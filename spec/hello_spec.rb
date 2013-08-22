require_relative 'spec_helper'

describe 'Model::Hello' do

  it 'should say hello' do
    Hello::hello.must_equal 'Hello, World!'
  end

end

