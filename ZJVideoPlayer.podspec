Pod::Spec.new do |s|
    s.name         = 'ZJVideoPlayer'
    s.version      = '1.2.4'
    s.summary      = 'video player.'
    s.description  = 'video payer'
    s.homepage     = 'https://github.com/zhanggengwei/ZJVideoPlayer'
     s.license  = 'MIT'
    s.authors  = { '非著名程序员' => 'm13716920635@163.com' }
    s.platform     = :ios, '8.0'
    s.source       = { :git => 'https://github.com/zhanggengwei/ZJVideoPlayer.git', :tag => s.version  }
    s.requires_arc = true
    s.dependency 'Masonry'
    s.dependency 'SJBaseVideoPlayer', '>= 3.0.0'
    s.dependency 'SJUIKit/AttributesFactory'

    s.source_files = 'SJVideoPlayer/*.{h,m}'

    # 通用
    s.subspec 'Common' do |ss|
        ss.source_files = 'SJVideoPlayer/Common/*.{h,m}'
    end

    # 容器
    s.subspec 'Adapters' do |ss|
        ss.source_files = 'SJVideoPlayer/Adapters/**/*.{h,m}'
        ss.dependency 'SJVideoPlayer/Common'
    end

    # 切换器
    s.subspec 'Switcher' do |ss|
        ss.source_files = 'SJVideoPlayer/Switcher/**/*.{h,m}'
    end

    # 进度条
    s.subspec 'SJProgressSlider' do |ss|
        ss.source_files = 'SJVideoPlayer/SJProgressSlider/*.{h,m}'
    end

    s.subspec 'Settings' do |ss|
        ss.source_files = 'SJVideoPlayer/Settings/*.{h,m}'
        ss.dependency 'SJVideoPlayer/SJFilmEditingControlLayer/ResourceLoader'
        ss.dependency 'SJVideoPlayer/SJEdgeControlLayer/ResourceLoader'
        ss.dependency 'SJVideoPlayer/SJFloatSmallViewControlLayer/ResourceLoader'
    end

    # 边缘控制层
    s.subspec 'SJEdgeControlLayer' do |ss|
        ss.source_files = 'SJVideoPlayer/SJEdgeControlLayer/*.{h,m}'

        ss.subspec 'ResourceLoader' do |a|
            a.source_files = 'SJVideoPlayer/SJEdgeControlLayer/ResourceLoader/*.{h,m}'
            a.resource = 'SJVideoPlayer/SJEdgeControlLayer/ResourceLoader/SJEdgeControlLayer.bundle'
        end

        ss.subspec 'View' do |v|
            v.source_files = 'SJVideoPlayer/SJEdgeControlLayer/View/*.{h,m}'
            v.dependency 'SJVideoPlayer/SJEdgeControlLayer/ResourceLoader'
            v.dependency 'SJVideoPlayer/SJEdgeControlLayer/Defines'
        end
        
        ss.subspec 'Defines' do |ss|
            ss.source_files = 'SJVideoPlayer/SJEdgeControlLayer/Defines/*.{h}'
        end

        ss.dependency 'SJVideoPlayer/Adapters'
        ss.dependency 'SJVideoPlayer/Switcher'
        ss.dependency 'SJVideoPlayer/Common'
        ss.dependency 'SJVideoPlayer/SJProgressSlider'
    end
    
    s.subspec 'SJFilmEditingControlLayer' do |f|
        f.source_files = 'SJVideoPlayer/SJFilmEditingControlLayer/*.{h,m}'
        f.dependency 'SJVideoPlayer/SJProgressSlider'
        f.dependency 'SJVideoPlayer/Switcher'
        f.dependency 'SJVideoPlayer/Adapters'
        
        f.subspec 'ResourceLoader' do |a|
            a.source_files = 'SJVideoPlayer/SJFilmEditingControlLayer/ResourceLoader/*'
            a.resource = 'SJVideoPlayer/SJFilmEditingControlLayer/ResourceLoader/SJFilmEditing.bundle'
        end

        f.subspec 'Core' do |a|
            a.source_files = 'SJVideoPlayer/SJFilmEditingControlLayer/Core/**/*.{h,m}'
            a.dependency 'SJVideoPlayer/SJFilmEditingControlLayer/ResourceLoader'
        end
    end

    s.subspec 'SJLoadFailedControlLayer' do |ss|
        ss.source_files = 'SJVideoPlayer/SJLoadFailedControlLayer/*.{h,m}'
        ss.dependency 'SJVideoPlayer/SJNotReachableControlLayer'
    end

    s.subspec 'SJNotReachableControlLayer' do |ss|
        ss.source_files = 'SJVideoPlayer/SJNotReachableControlLayer/*.{h,m}'
        ss.dependency 'SJVideoPlayer/SJEdgeControlLayer'
    end
    
    s.subspec 'SJMoreSettingControlLayer' do |ss|
        ss.source_files = 'SJVideoPlayer/SJMoreSettingControlLayer/*.{h,m}'
        ss.dependency 'SJVideoPlayer/SJEdgeControlLayer'
    end
    
    s.subspec 'SJSwitchVideoDefinitionControlLayer' do |ss|
        ss.source_files = 'SJVideoPlayer/SJSwitchVideoDefinitionControlLayer/*.{h,m}'
        ss.dependency 'SJVideoPlayer/Adapters'
        ss.dependency 'SJVideoPlayer/Common'
        ss.dependency 'SJVideoPlayer/Switcher'
    end
    
    # 浮窗小视图的控制层
    s.subspec 'SJFloatSmallViewControlLayer' do |ss|
      ss.source_files = 'SJVideoPlayer/SJFloatSmallViewControlLayer/*.{h,m}'
      ss.subspec 'ResourceLoader' do |a|
        a.source_files = 'SJVideoPlayer/SJFloatSmallViewControlLayer/ResourceLoader/*.{h,m}'
        a.resource = 'SJVideoPlayer/SJFloatSmallViewControlLayer/ResourceLoader/SJFloatSmallViewControlLayer.bundle'
      end
      ss.dependency 'SJVideoPlayer/Common'
      ss.dependency 'SJVideoPlayer/Adapters'
      ss.dependency 'SJVideoPlayer/Switcher'
    end

end