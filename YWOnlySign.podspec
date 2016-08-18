Pod::Spec.new do |s|

    s.name             = "YWOnlySign"
    s.version          = "1.0.0"
    s.summary          = "A short description of YWOnlySign."
    s.description      = <<-DESC
        The only marking equipment
    DESC
    s.homepage         = "https://github.com/qq329720990/YWOnlySign"
    # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
    s.license          = 'MIT'
    s.author           = { "qq329720990" => "dongyouweie@126.com" }
    s.source           = { :git => "https://github.com/qq329720990/YWOnlySign.git", :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/NAME'

    s.platform     = :ios, '7.0'
    # s.ios.deployment_target = '7.0'
    # s.osx.deployment_target = '10.7'
    s.requires_arc = true

    s.source_files = 'YWOnlySign/*'
    # s.resources = 'Assets'

    # s.ios.exclude_files = 'Classes/osx'
    # s.osx.exclude_files = 'Classes/ios'
    # s.public_header_files = 'Classes/**/*.h'
    s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
