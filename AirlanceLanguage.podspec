Pod::Spec.new do |s|
  s.name             = 'AirlanceLanguage'
  s.version          = '0.1'
  s.summary          = 'Airlance Language'

  s.description      = <<-DESC
TODO: Airlance Language module.
                       DESC

  s.homepage         = 'https://github.com/resoul/airlance-language'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'resoul' => 'resoul.ua@icloud.com' }
  s.source           = { :git => 'https://github.com/resoul/airlance-language.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_versions = ['5']
  s.ios.deployment_target = '15.0'

  s.source_files = 'Sources/**/*.swift'
  s.dependency 'Airlance'
end
