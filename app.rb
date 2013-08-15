require 'sinatra/base'
require 'sinatra/json'
require 'haml'
require 'multi_json'
require 'require_all'

class Scaffold < Sinatra::Base
  helpers Sinatra::JSON

  configure :production do
    disable :show_exceptions
  end

  configure :development, :test do
    enable :return_exceptions
    set :test_setting, 'test'
  end

  configure :development do
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end

  configure do
    set :views, Proc.new { File.join(root, "app/view") }
    disable :dump_errors
    disable :logging
    disable :raise_errors
  end

end

require_all 'app/model', 'app/controller'

