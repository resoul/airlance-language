Pod::Spec.new do |s|
  s.name             = 'AirlanceLanguage'
  s.version          = '0.1.2'
  s.summary          = 'Airlance Language'

  s.description      = <<-DESC
TODO: Airlance Language module.
                       DESC

  s.homepage         = 'https://github.com/resoul/airlance-language'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'resoul' => 'resoul.ua@icloud.com' }
  s.source           = { :git => 'https://github.com/resoul/airlance-language.git', :tag => 'v0.1.2' }

  s.swift_versions = ['5']
  s.ios.deployment_target = '15.0'

  s.source_files = 'Sources/**/*.swift'
  s.dependency 'Airlance'
end
