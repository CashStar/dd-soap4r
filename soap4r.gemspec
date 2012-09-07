# v0.2 gemspec for soap4r
# Walter Korman (shaper@waywardgeeks.org)

require 'rubygems'
Gem::Specification.new do |gem|
  gem.name = "dd-soap4r"
  gem.version = "1.5.8.5"
  gem.date = "2009-12-08"
  gem.author = "Attila Domokos (modifier: swalterd)"
  gem.email = "adomokos@gmail.com"
  gem.homepage = "https://github.com/DimpleDough/soap4r"
  gem.platform = Gem::Platform::RUBY
  gem.summary = "An implementation of SOAP 1.1 for Ruby."
  gem.files = Dir.glob("{bin,lib,test}/**/*")
  gem.require_path = "lib"
  gem.executables = [ "wsdl2ruby.rb", "xsd2ruby.rb" ]
  # don't reference the test until we see it execute fully and successfully
  gem.test_file = "test/runner.rb"
  # disable rdoc generation until we've got more
  gem.has_rdoc = false
  gem.add_dependency("httpclient", ">= 2.1.1")
end
