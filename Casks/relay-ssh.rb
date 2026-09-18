cask "relay-ssh" do
  version "0.1.0"
  sha256 "bc359c99b6cc5253ab1db9b9b251ec8e914782b381bb35bb51833105a3e60f1b"

  url "https://github.com/edisontrent17/ssh-client/releases/download/v#{version}/Relay-#{version}-macos-arm64.zip"
  name "Relay SSH"
  desc "SSH client with Ghostty terminals and an SFTP file browser"
  homepage "https://github.com/edisontrent17/ssh-client"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/MacOS/relay", target: "relay-ssh"

  caveats <<~EOS
    Relay 0.1.0 is an early, unnotarized release.
    If macOS blocks first launch, open System Settings > Privacy & Security
    and choose Open Anyway after attempting to open Relay.
  EOS
end
