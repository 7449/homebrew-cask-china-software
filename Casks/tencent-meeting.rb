cask 'tencent-meeting' do
  version '1.4.0.473'
  sha256 'cd46f8c202c1850f042b9740476325a5c3c268ea6f4d13915e2bf0ebb03da45b'

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
