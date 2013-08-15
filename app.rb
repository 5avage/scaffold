require 'sinatra/base'
require "sinatra/config_file"
require 'sinatra/json'
require 'ap'
require 'cgi'
require 'haml'
require 'multi_json'
require 'pry'
require 'require_all'

class Scaffold < Sinatra::Base
  helpers Sinatra::JSON

  configure :production do
    disable :show_exceptions
    # set :mysql_db_host, ENV['MYSQL_DB_HOST']
    # set :mysql_db_name, ENV['MYSQL_DB_NAME']
    # set :mysql_password, ENV['MYSQL_PASSWORD']
    # set :mysql_username, ENV['MYSQL_USERNAME']
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

require_all 'app'

