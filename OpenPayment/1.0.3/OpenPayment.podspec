#
# Be sure to run `pod lib lint CFSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

s.name			= "OpenPayment"
s.version		= "1.0.3"
s.summary		= "Cocoapods implementation of OPEN Payment SDK"

s.description		= <<-DESC
	Integrate OPEN Payment Gateway with your iOS app and start collecting payments from your customers.
		  DESC
s.homepage		= "https://github.com/bankopen/open-payment-iOS-framework.git"
s.license		= 'MIT'
s.author			= { "OPEN Financial Technologies Pvt Ltd" => "engineering@bankopen.co" }
s.source			= { :git => "https://github.com/bankopen/open-payment-iOS-framework.git", :tag => s.version }

s.platform		= :ios, "12.0"
s.vendored_frameworks	= "OpenPayment.xcframework"
s.swift_version		= "5.6.1"
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
