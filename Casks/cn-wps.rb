cask 'cn-wps' do
  version '3.0.1'
  sha256 '5b532dbca0c4ec0c8df6b6842df921a531a324c281427a9934f0b198f04a0a76'

  # cn-wps was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(4848).dmg"
  name 'cn-wps'
  homepage 'https://www.wps.cn/'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac'

  zap trash: [
               '~/Library/Application Scripts/com.kingsoft.wpsoffice.mac',
               '~/Library/Containers/com.kingsoft.wpsoffice.mac',
               '~/Library/Caches/com.kingsoft.wpsoffice.mac',
               '~/Library/Preferences/com.kingsoft.wpsoffice.mac.plist',
               '~/Library/WebKit/com.kingsoft.wpsoffice.mac',
             ]
end
