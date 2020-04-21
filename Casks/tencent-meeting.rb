cask 'tencent-meeting' do
  version '1.4.2.406'
  sha256 '15643ad74ad21f70872918d93e1c7d53195370d4216e068478461f96837e49f5'

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
