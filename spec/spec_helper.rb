testdir = File.dirname(__FILE__)
appdir = File.dirname(testdir) + '/app'
$LOAD_PATH.unshift testdir unless $LOAD_PATH.include?(testdir)
$LOAD_PATH.unshift appdir unless $LOAD_PATH.include?(appdir)

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'

require_relative '../app'

