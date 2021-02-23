Pod::Spec.new do |spec|


spec.name                  = 'LYObjectPodTest'


spec.version               = '1.0.0'


spec.ios.deployment_target = '9.0'


spec.license               = 'MIT'


spec.homepage              = 'https://github.com/Lee6804/LYObjectPodTest'


spec.author                = { "Lee" => "244283431@qq.com" }


spec.summary               = '测试测试'


spec.source                = { :git => 'https://github.com/Lee6804/LYObjectPodTest.git', :tag => spec.version }


spec.source_files          = "NSObject+DAC_Help.{h,m}"


spec.library               = 'z'


spec.requires_arc          = true


end