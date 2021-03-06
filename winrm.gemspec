# -*- encoding: utf-8 -*-
require 'date'

version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'winrm'
  s.version = version
  s.date		= Date.today.to_s

  s.author = ['Dan Wanek','Paul Morton']
  s.email = ['dan.wanek@gmail.com','paul@themortonsonline.com']
  s.homepage = "http://github.com/WinRb/WinRM"

  s.summary = 'Ruby library for Windows Remote Management'
  s.description	= <<-EOF
    Ruby library for Windows Remote Management
  EOF

  s.files = `git ls-files`.split(/\n/)
  s.require_path = "lib"
  s.rdoc_options	= %w(-x test/ -x examples/)
  s.extra_rdoc_files = %w(README.md LICENSE)

  s.required_ruby_version	= '>= 1.9.0'
  s.add_runtime_dependency  'gssapi', '~> 1.0.0'
  s.add_runtime_dependency  'nokogiri', '> 1.5.0'
  s.add_runtime_dependency  'httpclient', '> 2.2.0.2'
  s.add_runtime_dependency  'rubyntlm', '~> 0.1.1'
  s.add_runtime_dependency  'uuidtools', '> 2.1.2'
  s.add_runtime_dependency  'savon', '= 0.9.5'
  s.add_runtime_dependency  'logging', '> 1.6.1'
end
