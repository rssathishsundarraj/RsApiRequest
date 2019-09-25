

Pod::Spec.new do |spec|

 

  spec.name         = "RsApiRequest"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of RsApiRequest."
  spec.description  = "Sathish"
  spec.homepage     = "http://EXAMPLE/RsApiRequest"
  spec.license      = "MIT"
  spec.author             = { "Sathish Kumar" => "sathishkumar.rs@payoda.com" }   
 spec.platform     = :ios, "10.0"

	spec.swift_version = "4.2" 
spec.source          = { :git => "https://github.com/rssathishsundarraj/ApiRequest.git", :tag => "1.0.0" }
  spec.source_files  = "RsApiRequest"
  spec.exclude_files = "Classes/Exclude"

end
