cask 'alimail' do
  version '70459'
  sha256 'f4230720ee3e4bb96d97aafde071d67e41d281fe659628992a0b317c6709e0e1'

  # alimail was verified as official when first introduced to the cask
  url "http://download.taobaocdn.com/freedom/#{version}/default/Alimail.dmg"
  name 'alimail'
  homepage 'https://qiye.aliyun.com/'

  app 'Alimail.app'

  uninstall quit: 'com.alibaba.Alimail'

  zap trash: [
               '~/Library/Application Support/com.alibaba.Alimail',
               '~/Library/Caches/com.alibaba.Alimail',
               '~/Library/Preferences/com.alibaba.Alimail.plist',
               '~/Library/Logs/Alimail',
             ]
end
