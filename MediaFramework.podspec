#
# Be sure to run `pod lib lint MediaFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MediaFramework'
  s.version          = '0.0.31'
  s.summary          = 'A short description of MediaFramework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'This is awesome media framework created by Pooja Trivedi'
                       DESC

  s.homepage         = 'https://github.com/Pooja18iOS/MediaFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pooja18iOS' => 'pooja.trivedi@theonetechnologies.co.in' }
  s.source           = { :git => 'https://github.com/Pooja18iOS/MediaFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Classes/**/*'
  s.swift_version = '5.0'
  s.resource_bundles = {
     'MediaFramework' =>  ['MediaFramework/**']
#     ['MediaFramework/**']
   }
#  s.resources  = 'MediaFramework/*/.xcassets'
#s.resource_bundles = {
#  'MediaFramework' => ['MediaFramework/Media.xcassets']
#}

#  "MediaFramework/**/*.xcassets"
#  s.resources  = "MediaFramework/**/*.xcassets"
  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
