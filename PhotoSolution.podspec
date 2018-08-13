Pod::Spec.new do |spec|
  spec.name             = "PhotoSolution"
  spec.version          = "0.69"
  spec.summary          = "Pick multiple images from the local photo library."
  build_tag             = spec.version
  spec.homepage         = "https://github.com/Mark-Ma-1988/PhotoSolution"
  spec.license          = 'MIT'
  spec.author           = { "Mark Ma" => "maxch1988@gmail.com" }
  spec.source           = {
                          :git => "https://github.com/Mark-Ma-1988/PhotoSolution.git",
                          :tag => build_tag.to_s
                          }
  spec.platform         = :ios, '9.0'
  spec.module_name = 'PhotoSolution'
  spec.header_dir = 'PhotoSolution'
  spec.source_files     = 'PhotoSolution/*.{swift}'
  spec.resources = 'PhotoSolution/*.{png, xib, storyboard}'
  spec.static_framework = true
  spec.requires_arc     = true
  spec.swift_version = '4.1'
end