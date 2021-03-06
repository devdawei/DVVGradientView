

Pod::Spec.new do |s|

s.name         = 'DVVGradientView'
s.summary      = 'iOS 渐变视图'
s.version      = '1.0.0'
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.authors      = { 'devdawei' => '2549129899@qq.com' }
s.homepage     = 'https://github.com/devdawei'

s.platform     = :ios
s.ios.deployment_target = '9.0'
s.requires_arc = true

s.source       = { :git => 'https://github.com/devdawei/DVVGradientView.git', :tag => s.version.to_s }

s.source_files = 'DVVGradientView/DVVGradientView/*.{h,m}'

s.frameworks = 'Foundation', 'UIKit'

end
