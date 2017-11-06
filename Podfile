# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'OneSide' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for OneSide
  pod 'React', :path => './react-native', :subspecs => [
    'ART',
    'Core',
    'DevSupport', # 如果RN版本 >= 0.43，则需要加入此行才能开启开发者菜单
    'RCTActionSheet',
    'RCTAdSupport',
    'RCTGeolocation',
    'RCTImage’,
    'RCTLinkingIOS',
    'RCTNetwork',
    'RCTPushNotification',
    'RCTSettings',
    'RCTText',
    'RCTVibration',
    'RCTWebSocket',
    'RCTWebSocket', # 这个模块是用于调试功能的
    # 在这里继续添加你所需要的模块
  ]
  # 如果你的RN版本 >= 0.42.0，则加入下面这行
  pod "Yoga", :path => "./react-native/ReactCommon/yoga"

  target 'OneSideTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'OneSideUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
