use_framework = true

git_source = use_framework ? "https://github.com/WuXueDan555/XDBaseKit.git" : "https://github.com/WuXueDan555/XDBaseKit.git"

#zip_file_path = s.version.to_s.include?('.b') ? "repository/files/#{s.version.to_s.split('.b')[0]}-beta" : s.version.to_s.include?('.swift') ? "repository/files/#{s.version.to_s.split('.swift')[0]}" : "repository/files/#{s.version.to_s}"

#if use_framework
#    s.default_subspec = 'CoreFramework'
#    s.license           = { :type => 'MIT', :file => 'LICENSE' }
#    s.source            = { :git => git_source, :tag => s.version.to_s }
#else
#  s.default_subspec   = 'Core'
#  s.license           = { :type => 'MIT', :file => 'LICENSE' }
#  s.source            = { :git => git_source, :tag => s.version.to_s }
#end



Pod::Spec.new do |s|
  s.name             = 'XDBaseKit'
  s.version          = '1.1'
  s.summary          = 'A short description of XDBaseKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = git_source
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.author           = { 'WuXueDan555' => 'xd.wu@liaoke.tv' }
#  s.license           = { :type => 'MIT', :file => 'LICENSE' }
#  s.source           = { :git => git_source, :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.static_framework      = true
  s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'VALID_ARCHS' => 'arm64' }
  s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'VALID_ARCHS' => 'arm64' }
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  s.source            = { :git => git_source, :tag => s.version.to_s }
#  s.subspec 'CoreFramework' do |ss|
#    ss.vendored_frameworks = 'XDBaseKit.framework'
##    ss.resource = 'XOBaseKitFrameWork.bundle'
#  end
#  
#  s.subspec 'Core' do |ss|
#    ss.source_files = 'XDBaseKit/Classes/**/*'
#  end
  s.vendored_frameworks = 'XDBaseKit.framework'
  s.source_files = 'XDBaseKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XDBaseKit' => ['XDBaseKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
