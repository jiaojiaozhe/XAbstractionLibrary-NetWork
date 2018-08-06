#
# Be sure to run `pod lib lint XAbstractionLibrary-NetWork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XAbstractionLibrary-NetWork'
  s.version          = '0.0.12'
  s.summary          = 'XAbstractionLibrary-NetWork是一个抽象层网络组件.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
XAbstractionLibrary-NetWork是一个抽象层网络组件,拥有超简单的易用性，同时拥有业务无关、超时重发、加载状态回调、请求唯一性保证等功能。
                       DESC

  s.homepage         = 'https://github.com/jiaojiaozhe/XAbstractionLibrary-NetWork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiaojiaozhe' => 'bluebiao@163.com' }
  s.source           = { :git => 'https://github.com/jiaojiaozhe/XAbstractionLibrary-NetWork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XAbstractionLibrary-NetWork/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XAbstractionLibrary-NetWork' => ['XAbstractionLibrary-NetWork/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'AFNetworking'
  s.dependency 'XAbstractionLibrary-Base'
  
  
end
