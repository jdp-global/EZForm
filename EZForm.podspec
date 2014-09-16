Pod::Spec.new do |s|
  s.name = "EZForm"
  s.version = "1.1.4"
  s.summary = "iOS form handling and validation library."
  s.description = <<-DESC
EZForm is a form handling and validation library for iOS. It is designed to be decoupled from your user interface layout, leaving you free to present your form UI any way you like. That doesn't mean EZForm won't integrate with your UI. You tell EZForm which of your controls and views you want to handle each form field, and EZForm will take care of input validation, input filtering and updating views when field values change.
DESC
  s.homepage = "https://github.com/chrismiles/EZForm"
  s.license = 'MIT'
  s.author = { "Chris Miles" => "miles.chris@gmail.com" }
  s.source = { :git => "https://github.com/jdp-global/EZForm/EZForm.git", :commit => "e1b946f7dc413b1df6cbc49eb24f604fe4c05d16" }
  s.platform = :ios, '6.0'
  s.source_files = 'EZForm/EZForm/src'
  s.framework = 'UIKit'
  s.requires_arc = true
end
