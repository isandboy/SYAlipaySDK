#
# Be sure to run `pod lib lint SYAlipaySDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYAlipaySDK'
  s.version          = '15.7.9'
  s.summary          = '集成支付宝支付SDK，支持打包成动态库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  1. 库版本和支付宝官方提供的SDK版本对应关系见Readme文件里面的版本说明
  2. 在支付宝App支付官方SDK包了一层，支持打包成动态库
                         DESC

  s.homepage         = 'https://github.com/isandboy/SYAlipaySDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isandboy' => 'sandboylu@gmail.com' }
  s.source           = { :git => 'https://github.com/isandboy/SYAlipaySDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.public_header_files = 'SYAlipaySDK/AlipaySDK.framework/**/*.h'
  s.source_files = 'SYAlipaySDK/**/*.{h,m}'
  s.vendored_frameworks = 'SYAlipaySDK/AlipaySDK.framework'
  s.resource = 'SYAlipaySDK/AlipaySDK.bundle'
  s.libraries = 'c++', 'z'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }

end
