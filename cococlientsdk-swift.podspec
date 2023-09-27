Pod::Spec.new do |s|
  s.name             = 'cococlientsdk-swift'
  s.version          = '0.0.7'
  s.summary          = 'A library to wrap cococlientsdk.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Swift wrappers around cococlientsdk,
  this wrapper can be used rapid develop of COCO applications on iOS platform.
  DESC

  s.homepage         = 'https://github.com/danyliak1/cococlientsdk-swift'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                  	 Copyright 2018
                 	 Permission is granted to...
                	 LICENSE
               	       }
  s.authors          = {  'danyliak1' => 'vladdanulyak@gmail.com' }
  s.source           = {  :git => 'https://github.com/danyliak1/cococlientsdk-swift.git',
                          :tag => "#{s.version}" }

  s.swift_version = '5'
  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.preserve_paths = "IOTClientSDK.xcframework/*"

 s.xcconfig = {
        'FRAMEWORK_SEARCH_PATH[sdk=iphoneos*]' => '$(inherited) "$(PODS_ROOT)/IOTClientSDK"',
        'OTHERCFLAGS[sdk=iphoneos*]' => '$(inherited) -iframework "$(PODS_ROOT)/IOTClientSDK"',
        'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -framework IOTClientSDK'
    }
end