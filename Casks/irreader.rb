cask 'irreader' do
  version '1.5.9'
  sha256 'deda93fac98fe0c21be3daa3ca905f7c9036b3924e741ab7d8b4a3745eda008a'

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
