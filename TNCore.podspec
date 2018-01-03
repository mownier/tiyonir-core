Pod::Spec.new do |s|
  s.name     = 'TNCore'
  s.version  = '0.1.1'
  s.summary  = 'Core for Tiyo Nir architecture'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/tiyonir-core'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/tiyonir-core.git', :tag => s.version.to_s }
  s.source_files = 'TiyoNirCore/Source/*.swift'
  s.requires_arc = true
end

