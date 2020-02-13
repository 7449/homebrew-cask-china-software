cask 'tencent-meeting' do
  version '1.1.6.413'
  sha256 'a2aa92a4362c83a59c14793078ba37df1626f51bff210ac9838b40b7888a35b5'

  # tencent-meeting was verified as official when first introduced to the cask
  url "https://down.qq.com/download/#{version}.publish_release.dmg"
  name 'tencent-meeting'
  homepage 'https://meeting.qq.com/download-center.html'

  app 'TencentMeeting.app'

  uninstall quit: 'com.tencent.meeting'

  zap trash: [
               '~/Library/Caches/com.tencent.meeting',
               '~/Library/Saved Application State/com.tencent.meeting.savedState',
               '~/Library/Preferences/com.tencent.meeting.plist',
               '~/Library/Containers/com.tencent.meeting',
             ]
end
