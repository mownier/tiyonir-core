Pod::Spec.new do |s|
  s.name     = 'TNCore'
  s.version  = '0.2.1'
  s.summary  = 'Core for Tiyo Nir architecture'
  s.platform = :ios, '11.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/mownier/tiyonir-core'
  s.author   = { 'Mounir Ybanez' => 'rinuom91@gmail.com' }
  s.source   = { :git => 'https://github.com/mownier/tiyonir-core.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.subspec 'Error' do |ss|
    ss.source_files = 'TiyoNirCore/Source/Error/*.swift'
  end

  s.subspec 'NavigationController' do |ss|
    ss.source_files = 'TiyoNirCore/Source/NavigationController/*.swift'
  end

  s.subspec 'Result' do |ss|
    ss.source_files = 'TiyoNirCore/Source/Result/*.swift'
  end

  s.subspec 'Scene' do |ss|
    ss.source_files = 'TiyoNirCore/Source/Scene/*.swift'
  end

  s.subspec 'TableView' do |ss|
    ss.source_files = 'TiyoNirCore/Source/TableView/*.swift'
  end

  s.subspec 'Waypoint' do |ss|
    ss.source_files = 'TiyoNirCore/Source/Waypoint/*.swift'
  end
end

