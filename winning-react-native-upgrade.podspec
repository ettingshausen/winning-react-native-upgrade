require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "winning-react-native-upgrade"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  winnning-react-native-upgrade
                   DESC
  s.homepage     = "https://github.com/ettingshausen/winning-react-native-upgrade"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/ettingshausen/winning-react-native-upgrade.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

