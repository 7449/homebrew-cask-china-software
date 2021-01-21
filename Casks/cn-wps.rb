cask 'cn-wps' do
  version '3.2.1'
  sha256 '7b45d7f4fabd52be9d035eaf8950629658a16197b9e392b6edc46300e1a5ecc3'

  # cn-wps was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(5071).dmg"
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
