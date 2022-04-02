
# Be sure to run `pod lib lint Network.podspec' to ensure this is a
# valid spec before submitting.

# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html


Pod::Spec.new do |s|
  s.name             = 'Network'
  s.version          = '0.1.0'
  s.summary          = 'this is a Network service.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Network NetworkService AAA BBB CCC woainicaijie
                       DESC

  s.homepage         = 'https://github.com/kokmmm33/NetworkTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'joseph' => 'joseph7011gg@gmail.com' }
  s.source           = { :git => 'https://github.com/kokmmm33/NetworkTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/kokmmm33'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Network/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Network' => ['Network/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    
    s.dependency 'Moya'
end
