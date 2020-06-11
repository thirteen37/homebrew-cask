cask 'bricklink-partdesigner' do
  version '1.0.6_1'
  sha256 '737be1fefec9b8923707e4379dee590e96bf7a9b9e7c34415bd3cbe8c100c796'

  # dzncyaxjqx7p3.cloudfront.net/ was verified as official when first introduced to the cask
  url 'https://dzncyaxjqx7p3.cloudfront.net/PartDesigner/PartDesigner.pkg'
  appcast 'https://bricklink.com/v3/studio/partdesigner.page'
  name 'PartDesigner'
  homepage 'https://bricklink.com/v3/studio/partdesigner.page'

  auto_updates true
  depends_on cask: 'bricklink-studio'

  pkg 'PartDesigner.pkg'

  uninstall pkgutil: 'com.bricklink.pkg.PartDesigner'

  zap trash: [
               '~/Library/Application Support/unity.BrickLink.Part Designer',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.BrickLink.Part Designer',
               '~/Library/Preferences/unity.BrickLink.Part Designer.plist',
               '~/Library/Preferences/unity.BrickLink.Patcher.plist',
               '~/Library/Saved Application State/unity.BrickLink.Part Designer.savedState',
               '~/Library/Saved Application State/unity.BrickLink.Patcher.savedState',
             ]
end
