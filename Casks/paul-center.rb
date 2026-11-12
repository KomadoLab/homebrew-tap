cask "paul-center" do
  version "0.4.5"
  sha256 "284738accfe628bf8abb97936586d7fc1745813e184c4790ff6c77481c648599"

  url "https://paulcenter.ai/download/Paul-Center-#{version}.dmg"
  name "Paul Center"
  desc "AI assistant that places phone calls for you"
  homepage "https://paulcenter.ai/"

  livecheck do
    url "https://paulcenter.ai/latest.json"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on macos: :sonoma

  auto_updates true




  app "Paul Center.app"

  # Settings, recordings and caches. Never the Keychain: the phone line's token and any keys stay.
  zap trash: [
    "~/Library/Application Support/Paul Center",
    "~/Library/Caches/com.komadolab.paulcenter",
    "~/Library/Caches/dev.gabek.PaulCenter",
    "~/Library/HTTPStorages/com.komadolab.paulcenter",
    "~/Library/HTTPStorages/dev.gabek.PaulCenter",
    "~/Library/Preferences/com.komadolab.paulcenter.plist",
    "~/Library/Preferences/dev.gabek.PaulCenter.plist",
    "~/Library/Saved Application State/com.komadolab.paulcenter.savedState",
    "~/Library/Saved Application State/dev.gabek.PaulCenter.savedState",
  ]

  caveats <<~EOS
    Let Paul take the call

    Paul Center is invite-only for now: setup asks for an invite code.
    It needs macOS 14.4 or later, and Claude Code or Codex for Paul's work.
  EOS
end
