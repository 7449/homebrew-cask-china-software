cask 'tencent-meeting' do
  version '1.4.8.414'
  sha256 '1142f9d961d91212016c02399cc41ef047bfddd0722b89a52d9f36d245ff4a98'

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
