Pod::Spec.new do |s|
  s.name         = "BBPOS"
  s.version      = "1.0.3"
  s.summary      = "Mobile Device Framework"
  s.description  = <<-DESC
  Mobile Device Framework used to integrate EMV readers in applications
  DESC
  s.homepage     = "https://github.com/globalpayments"
  s.license = 'EULA'
  s.author             = { "Global Payments" => "entapp_devportal@e-hps.com" }
  s.source       = { :git => "https://github.com/globalpayments/BBPOS.git", :tag => s.version.to_s }
  s.vendored_frameworks = "BBPOS.xcframework"
  s.platform     = :ios, '9.0'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
