#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint timezone_provider.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'timezone_provider'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'timezone_provider/Sources/timezone_provider/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # The privacy manifest. For more information, see
  # https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  s.resource_bundles = {'timezone_provider_privacy' => ['timezone_provider/Sources/timezone_provider/PrivacyInfo.xcprivacy']}
end
