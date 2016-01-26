Pod::Spec.new do |s|
  s.name         = "DTKDropdownMenu"
  s.version      = "0.0.4"
  s.summary      = "DTKDropdownMenu"
  s.homepage     = "https://github.com/arcangelw/DTKDropdownMenu"
  s.license      = 'MIT'
  s.author       = { "Zhe Wu" => "wuzhezmc@gmail.com" }
  s.platform     = :ios, '7.0'
  s.source       = {:git => "https://github.com/arcangelw/DTKDropdownMenu.git" ,
		                :tag => s.version }
  s.source_files = "DTKDropdownMenuView/**/*.{h,m}"
  s.resources    = "DTKDropdownMenuView/DTKDropdownMenuView.bundle"
  s.dependency   'Masonry', '~> 0.6'
  s.requires_arc = true
end
