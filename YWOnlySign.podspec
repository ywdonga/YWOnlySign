
Pod::Spec.new do |s|

  s.name         = "YWOnlySign"
  s.version      = "1.0.0"
  s.summary      = "A short description of YWOnlySign."

  s.description  = <<-DESC
                    The only marking equipment
                   DESC

  s.homepage     = "https://github.com/qq329720990"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT (example)"

  s.author             = { "329720990" => "dongyouweie@126.com" }

  s.source       = { :git => "http://EXAMPLE/YWOnlySign.git", :tag => "#{s.version}" }
  # s.social_media_url   = "http://twitter.com/329720990"

  s.platform     = :ios, "5.0"

  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.requires_arc = true

  s.source_files  = "YWOnlySign/*"

  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
