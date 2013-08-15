require_relative 'setup'

describe 'Scaffold::Default' do

  it 'should return a bootstrap-formatted webpage from /' do
    request = Rack::MockRequest.new(Scaffold)
    response = request.get('/')
    response.status.must_equal(200)
    response.content_type.split(';').first.must_equal('text/html')
    response.body.must_include 'bootstrap'
    response.body.must_include '<title>Scaffold</title>'
  end

  it 'should return hello world json doc from /json' do
    request = Rack::MockRequest.new(Scaffold)
    response = request.get('/json')
    response.status.must_equal(200)
    response.content_type.split(';').first.must_equal('application/json')
    docs = JSON.parse(response.body, symbolize_names: true)
    docs.must_equal hello: 'world'
  end

end
