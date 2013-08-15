require 'sinatra'
require './app'

use Rack::ShowExceptions
$stdout.sync = true

run Scaffold
