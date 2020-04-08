cask 'cn-wps' do
  version '2.1.2'
  sha256 '9f560401cbaab011b7edfed119f2b8230422ddccea5d6d37c9d6101c53b04d6d'

  # cn-wps was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version}/WPS_Office_#{version}(3417).dmg"
  name 'cn-wps'
  homepage 'https://www.wps.cn/'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac'

  zap trash: [
               '~/Library/Application Scripts/com.kingsoft.wpsoffice.mac',
               '~/Library/Containers/com.kingsoft.wpsoffice.mac',
             ]
end
