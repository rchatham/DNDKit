#
#  Be sure to run `pod spec lint DNDKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "DNDKit"
  spec.version      = "0.0.4"
  spec.summary      = "Datasource and Delegate Kit."
  spec.homepage     = "http://github.com/rchatham/DNDKit"
  spec.license      = "MIT"
  spec.author             = { "Reid Chatham" => "reid.chatham@gmail.com" }
  spec.social_media_url   = "http://twitter.com/reid_thinks"
  spec.platform     = :ios, "12.1"
  spec.source       = { :git => "https://github.com/rchatham/DNDKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "DNDKit/**/*.swift"
  spec.swift_versions = "5.0"
end
