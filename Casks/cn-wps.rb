cask 'cn-wps' do
  version '3.7.0'
  sha256 'd6a547174ab026f041cdc5f81db4a944fae72e9176c77546d7bac19a2b452899'

  # cn-wps was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(5929).dmg"
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
