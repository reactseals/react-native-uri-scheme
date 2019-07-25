
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNUriScheme"
  s.version      = package['version']
  s.summary      = "RNUriScheme"
  s.description  = <<-DESC
                  RNUriScheme
                   DESC
  s.homepage     = "www.reactseals.com"
  s.license      = "MIT"
  s.author             = { "author" => "aurimas.mickys@reactseals.com" }
  s.platform     = :ios, "9.0"
   s.ios.deployment_target = '9.0'
   s.tvos.deployment_target = '10.0'
  s.source       = { :git => "https://github.com/reactseals/react-native-uri-scheme.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency "React"
end
