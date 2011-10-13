require 'forwardable'
require 'httpclient'

class HTTPClient
  class UploadIO
    extend Forwardable
    def_delegators :@io, :read, :pos, :pos=, :size

    attr_reader :io, :path

    def initialize(io, path = '')
      @io = io
      @path = path
    end

    def content_type
      HTTP::Message.mime_type(path)
    end
  end
end