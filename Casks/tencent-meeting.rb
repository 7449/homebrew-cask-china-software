cask 'tencent-meeting' do
  version :latest
  sha256 :no_check

  # tencent-meeting was verified as official when first introduced to the cask
  url "https://meeting.tencent.com/download-mac.html?from=1002&fromSource=1"
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
