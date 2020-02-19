cask 'ysyy' do
  version '1.2.1_1001'
  sha256 'c91e7a87787f48eb548d991695c4a32789821de70357e2f2a1a61d6a6f13ebdc'

  # ysyy was verified as official when first introduced to the cask
  url "http://download.cntv.cn/cbox/mac/ysyy_v#{version}_setup.dmg"
  name 'ysyy'
  homepage 'https://www.cctv.com/'

  app '央视影音.app'

  uninstall quit: 'eee.------------'

  zap trash: [
               '~/Library/Application Support/央视影音',
               '~/Library/Caches/央视影音',
               '~/Library/Preferences/eee.------------.央视影音.plist',
               '~/Library/Saved Application State/eee.------------.savedState',
             ]
end
