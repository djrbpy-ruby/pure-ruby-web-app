require 'rack'
require_relative './app'

use Rack::Reloader, 0 # <- Add this line



use Rack::Static, urls: ['/public', '/views'], cascade: true
use Rack::Static, :urls => {"/" => "index.html"}, :root => "views"

run App.new