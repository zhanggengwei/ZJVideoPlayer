Pod::Spec.new do |s|
	s.name     = 'ZJVideoPlayer'
	s.version  = '1.0.0'
	s.license  = 'MIT'
	s.summary  = 'An atuo fit size tagView on iOS.'
	s.homepage = 'https://github.com/zhanggengwei/ZJVideoPlayer'
	s.authors  = { '非著名程序员' => 'm13716920635@163.com' }
	s.source   = { :git => 'https://github.com/zhanggengwei/ZJVideoPlayer.git', :tag => s.version }
    s.platform     = :ios, '8.0'
    s.requires_arc = true
    s.dependency 'Masonry'
    s.dependency 'SJBaseVideoPlayer', '>= 3.0.0'
    s.dependency 'SJUIKit/AttributesFactory'
    s.source_files = 'SJVideoPlayer/*.{h,m}'
 end




