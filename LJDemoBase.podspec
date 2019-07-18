
Pod::Spec.new do |s|

  s.name         = "LJDemoBase"
  s.version      = "1.0.1"
  s.swift_version = '5.0'
  s.summary      = "LJDemoBase summary 1.0.1 "
  s.description  = <<-DESC
                    LJDemoBase 1.0.1 组件化仓库搭建
                   DESC
  
  s.homepage     = "https://github.com/weeelCode/LJDemoBase"
  s.license      = "MIT"
  s.author       = { "weel" => "18571720073@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/weeelCode/LJDemoBase.git", :tag => s.version }
  s.source_files  = "Classes", "Classes/**/*.{h,m,swift}"
  s.exclude_files = "Classes/Exclude"

end
