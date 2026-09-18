cask "relay-ssh" do
  version "0.1.1"
  sha256 "e69d8a5b74d3a9775b64ec39068c04a85c53d2438d1683f329d00be60d355911"

  url "https://github.com/edisontrent17/ssh-client/releases/download/v#{version}/Relay-#{version}-macos-arm64.zip"
  name "Relay SSH"
  desc "SSH client with Ghostty terminals and an SFTP file browser"
  homepage "https://github.com/edisontrent17/ssh-client"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/MacOS/relay", target: "relay-ssh"

  caveats <<~EOS
    Relay is an early, unnotarized release.
    If macOS blocks first launch, open System Settings > Privacy & Security
    and choose Open Anyway after attempting to open Relay.
  EOS
end
