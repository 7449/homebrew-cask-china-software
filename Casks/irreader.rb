cask 'irreader' do
  version '1.6.0'
  sha256 '1310d5096cfaca0d5584b279efd2dddade9215627b055f338c9b897de9ca11f4'

  # irreader was verified as official when first introduced to the cask
  url "http://irreader.fatecore.com/download/irreader-#{version}.dmg"
  name 'irreader'
  homepage 'http://irreader.fatecore.com/'

  app 'irreader.app'

  uninstall quit: 'com.netqon.likefeeder'

  zap trash: [
               '~/Library/Application Support/irreader',
               '~/Library/Preferences/com.netqon.likefeeder.helper.plist',
               '~/Library/Preferences/com.netqon.likefeeder.plist',
               '~/Library/Saved Application State/com.netqon.likefeeder.savedState',
               '~/Library/Logs/irreader',
             ]
end
