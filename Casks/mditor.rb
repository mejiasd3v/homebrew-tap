cask "mditor" do
  version "0.2.0"
  sha256 "7ef1c2ceb7910cd90fe079638c8ceece60c3241887656fd6be0f397f6612b127"

  url "https://github.com/mejiasd3v/mditor/releases/download/v#{version}/MDitor.zip"
  name "MDitor"
  desc "Fast, native macOS Markdown editor and viewer built with the Native SDK (markup + Zig, GPU-rendered, no browser)"
  homepage "https://github.com/mejiasd3v/mditor"

  # Unsigned app: without this, the quarantined download is blocked by
  # Gatekeeper on first launch (right-click > Open workaround required).
  quarantine false

  app "MDitor.app"

  zap trash: "~/Library/Application Support/mditor"
end
