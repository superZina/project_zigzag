# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ios' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for ios
  pod 'Alamofire'
  pod 'AlamofireNetworkActivityIndicator', '~> 2.3'
  pod 'AlamofireObjectMapper', '~> 5.2'
  pod 'AlamofireImage', '~> 3.5'
  pod 'SnapKit', '~> 4.0.0'
  pod 'Firebase/Analytics'
  pod 'Fabric', '~> 1.7.5'
  pod 'Crashlytics', '~> 3.10.1'
  pod 'BEMCheckBox'
  pod 'WCLShineButton'
  pod 'GMStepper'
  pod 'Tabman', '~> 2.9'
  pod 'FSPagerView'
  
#   Workaround for Cocoapods issue #7606
  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings.delete('CODE_SIGNING_ALLOWED')
      config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end
  end
end
