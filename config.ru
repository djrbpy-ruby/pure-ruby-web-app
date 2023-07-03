require 'rack'
require_relative './app'

use Rack::Reloader, 0 # <- Add this line
use Rack::Static, urls: ['/public'], cascade: true
run App.new