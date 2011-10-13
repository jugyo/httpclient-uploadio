httpclient-uploadio
====

You can upload an IO to web server through httpclient-uploadio.

Install
----

    gem install httpclient-uploadio

Example
----

    require 'httpclient/uploadio'
    require 'stringio'

    io       = HTTPClient::UploadIO.new(StringIO.new("foo"), "foo.txt") # create UploadIO
    client   = HTTPClient.new
    response = client.post('http://localhost:4567/', :file => io)       # post
    puts "response: #{response.body}"

Copyright
----

Copyright (c) 2011 jugyo. See LICENSE.txt for further details.