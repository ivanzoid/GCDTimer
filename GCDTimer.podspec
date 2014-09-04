Pod::Spec.new do |s|
  s.name             = "GCDTimer"
  s.version          = File.read('VERSION')
  s.summary          = "Equivalent of NSTimer on GCD queues."
  s.description      = <<-DESC
                       Implementation of NSTimer-like class with API close as much as possible to original,
					   but done on top of GCD (Grand Central Dispatch).
                       DESC
  s.homepage         = "https://github.com/ivanzoid/GCDTimer"
  s.license          = 'MIT'
  s.author           = { "Ivan Zezyulya" => "GCDTimer@zezyulya.com" }
  s.source           = { :git => "https://github.com/ivanzoid/GCDTimer.git", :tag => s.version.to_s }

  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.7'
  s.requires_arc = true
  s.source_files = 'Source'
end
