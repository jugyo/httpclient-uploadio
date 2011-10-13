# Server example:
#
#     require 'sinatra'
#     post '/' do
#       params[:file][:tempfile].read
#     end
#
$LOAD_PATH << File.expand_path('../../lib', __FILE__)
require 'httpclient/uploadio'
require 'stringio'

stringio = StringIO.new("foo")
io       = HTTPClient::UploadIO.new(stringio, "foo.txt")
client   = HTTPClient.new
response = client.post('http://localhost:4567/', :file => io)
puts "response: #{response.body}"