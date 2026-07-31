cask "mditor" do
  version "0.1.0"
  sha256 "bc90edf7c2516c10567f59bef6ce76c0a9ab572c573d280c3171afd75bcfd450"

  url "https://github.com/mejiasd3v/mditor/releases/download/v#{version}/MDitor.zip"
  name "MDitor"
  desc "Fast, native macOS Markdown editor and viewer built with the Native SDK (markup + Zig, GPU-rendered, no browser)"
  homepage "https://github.com/mejiasd3v/mditor"

  app "MDitor.app"

  postflight do
    # Unsigned app: drop any quarantine attribute so the first launch
    # does not hit a Gatekeeper prompt.
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MDitor.app"]
    # Register with LaunchServices and assert MDitor as the default
    # handler for Markdown documents.
    system_command "/usr/bin/swift",
                   args: ["-e", "import CoreServices; let b = \"dev.mditor.app\" as CFString; for u in [\"net.daringfireball.markdown\" as CFString, \"public.markdown\" as CFString] { LSSetDefaultRoleHandlerForContentType(u, .editor, b) }"]
  end

  zap trash: "~/Library/Application Support/mditor"
end
