# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["jugyo"]
  gem.email         = ["jugyo.org@gmail.com"]
  gem.description   = %q{You can upload an IO to a web server through httpclient-uploadio.}
  gem.summary       = %q{Wrapper for IO to upload to web server}
  gem.homepage      = "https://github.com/jugyo/httpclient-uploadio"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "httpclient-uploadio"
  gem.require_paths = ["lib"]
  gem.version       = '1.0.0'

  gem.add_dependency 'httpclient', '~> 2.2'
end
