require 'net/http'

class Scaffold

  before do
    @title = "Scaffold"
  end

  get '/' do
    @text = Net::HTTP.get(URI('http://loripsum.net/api/2/decorate/ul/link/code'))
    haml :default
  end

  get '/json' do
    json hello: 'world'
  end

end
