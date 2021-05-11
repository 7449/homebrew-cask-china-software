cask 'cn-wps' do
  version '3.6.0'
  sha256 'fb8ad6450d78ff1fc594d14b60542009517095870179579f75e04cec7f9947a4'

  # cn-wps was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(5672).dmg"
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
