Pod::Spec.new do |spec|
  spec.name         = "DNDKit"
  spec.version      = "0.0.1"
  spec.license      = "MIT" 
  spec.homepage     = "https://github.com/rchatham/DNDKit"
  spec.authors      = { "Reid Chatham" => "reid.chatham@gmail.com" }
  spec.summary      = "Datasource and Delegate Kit."
  spec.source       = { :git => "https://github.com/rchatham/DNDKit.git", :tag => "#{spec.version}" }
  spec.platform     = :ios, "8.0"
  spec.source_files = "DNDKit/*"
end
