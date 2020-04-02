cask 'tencent-meeting' do
  version '1.3.7.402'
  sha256 'f56ea483a8d333b5f4542c65fad589cc1af2fc403fd98a742b04e6340ff7ab07'

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
