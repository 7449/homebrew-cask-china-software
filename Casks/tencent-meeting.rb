cask 'tencent-meeting' do
  version '1.4.6.400'
  sha256 '9ea312d12a7d48592806361b4f703b4c7865c29678cfa6c85d544f3a52e1d8b7'

  # tencent-meeting was verified as official when first introduced to the cask
  url "https://down.qq.com/download/TencentMeeting_0300000000_#{version}.publish.dmg"
  name 'tencent-meeting'
  homepage 'https://meeting.qq.com/download-center.html'

  app 'TencentMeeting.app'

  uninstall quit: 'com.tencent.meeting'

  zap trash: [
               '~/Library/Caches/com.tencent.meeting',
               '~/Library/Saved Application State/com.tencent.meeting.savedState',
               '~/Library/Preferences/com.tencent.meeting.plist',
               '~/Library/Containers/com.tencent.meeting',
               '~/Library/WebKit/com.tencent.meeting',
             ]
end
