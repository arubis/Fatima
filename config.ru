require 'rubygems'
require 'rack'
require 'thin'

# from pre-Sinatra days:
# gem 'rack-rewrite', '~> 1.0.0'
# require 'rack/rewrite' # can almost certainly depreciate this in favor of sinatra


$: << File.dirname(__FILE__)
require 'frankie'

use Rack::Static, :urls => ["/stylesheets", "/index.html", "/javascript"], :root => "public" # used to include /images too...

#use Rack::Rewrite do
#   rewrite '/', '/index.html'
#end

run Sinatra::Application

