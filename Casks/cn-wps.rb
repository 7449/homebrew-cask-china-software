cask 'cn-wps' do
  version '2.2.0'
  sha256 'b83628fc7c5b36abc6caae969c6807e3ca0b4671ecdb6693bbb8c7ddcc36b69a'

  # cn-wps was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(3563).dmg"
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
