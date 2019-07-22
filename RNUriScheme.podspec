
Pod::Spec.new do |s|
  s.name         = "RNUriScheme"
  s.version      = "1.0.1"
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
  s.source       = { :git => "https://github.com/author/RNUriScheme.git", :tag => "master" }
  s.source_files  = "ios/RNUriScheme/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end
