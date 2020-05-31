#
# Be sure to run `pod lib lint SnapLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SnapLayout'
  s.version          = '2.0.2'
  s.summary          = 'Concise API for iOS Auto Layout'
  s.swift_version    = '5.0'

s.description  = <<-DESC
# SnapLayout
Concise API for iOS Auto Layout. SnapLayout extends `UIView` to deliver a list of APIs to improve
 readability while also shortening constraint code. Internally uses AutoLayout to provide the best 
 experience. With SnapLayout, developers can remove boilerplate code but not at the cost of readability.

Imagine applying any or all of the following constraints in one line of code: top, leading, trailing, 
bottom, width, height, centerX, centerY. This is possible with `SnapLayout`.
DESC

  s.homepage         = 'https://github.com/pokanop/SnapLayout'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Satinder Singh' => 'satindersingh71@gmail.com' }
  s.source           = { :git => 'https://github.com/pokanop/SnapLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = 'SnapLayout/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SnapLayout' => ['SnapLayout/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
