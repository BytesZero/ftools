#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ftools.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ftools'
  s.version          = '1.0.0'
  s.summary          = 'Flutter tools plugin'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/yy1300326388'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Zero' => 'zhengsonglan001@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
