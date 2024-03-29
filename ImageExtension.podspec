#
# Be sure to run `pod lib lint ImageExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ImageExtension'
  s.version          = '0.3.0'
  s.summary          = 'ImageExtension is a set the border corner radius with border color'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'CustomImageExtension is a set the border corner radius with border color'
                       DESC

  s.homepage         = 'https://github.com/mannaiahYadav/ImageExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mannaiah' => 'mannaiah.jl@gmail.com'}
   s.source           = { :git => 'https://github.com/mannaiahYadav/ImageExtension.git',
                           :tag => s.version}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
   s.swift_version = '4.0'

  s.source_files = 'Source/**/*.{swift}'
  
  # s.resource_bundles = {
  #   'ImageExtension' => ['ImageExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
