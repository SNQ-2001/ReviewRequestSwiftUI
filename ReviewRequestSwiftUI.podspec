#
# Be sure to run `pod lib lint ReviewRequestSwiftUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ReviewRequestSwiftUI'
  s.version          = '0.1.0'
  s.summary          = 'ReviewRequestSwiftUI is a library for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  ReviewRequestSwiftUI is a library for iOS. See README.md for usage.
                       DESC

  s.homepage         = 'https://github.com/SNQ-2001/ReviewRequestSwiftUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SNQ-2001' => 'taishin05109@gmail.com' }
  s.source           = { :git => 'https://github.com/SNQ-2001/ReviewRequestSwiftUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/_SNQ'

  s.ios.deployment_target = '14.0'

  s.source_files = 'Sources/**/*.swift'
  
  s.swift_version = '4.1'
  
  # s.resource_bundles = {
  #   'ReviewRequestSwiftUI' => ['ReviewRequestSwiftUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'SwiftUI'
  # s.dependency 'AFNetworking', '~> 2.3'
end
