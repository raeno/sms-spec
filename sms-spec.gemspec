# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sms_spec/version"

Gem::Specification.new do |s|
  s.name        = "sms-spec"
  s.version     = SmsSpec::VERSION
  s.authors     = ["Chris Rittersdorf"]
  s.email       = ["manlycode@gmail.com"]
  s.homepage    = "https://github.com/manlycode/sms-spec"
  s.summary     = %q{Test SMS interactions with RSpec and Cucumber}
  s.description = %q{SMS Spec gives you an RSpec DSL and Cucumber steps to test SMS interactions.}

  s.rubyforge_project = "sms-spec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rspec', "~> 3.1"
  s.add_development_dependency "rake"
  s.add_development_dependency "twilio-ruby", "~> 4.2"
  s.add_development_dependency "lookout-clickatell", "~> 0.8"
  s.add_development_dependency "pry"
end
