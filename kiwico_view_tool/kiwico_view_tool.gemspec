# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kiwico_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "kiwico_view_tool"
  spec.version       = KiwicoViewTool::VERSION
  spec.authors       = ["Quinctilius Maximus"]
  spec.email         = ["quintentwood@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use every now and then.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://www.kiwico.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
