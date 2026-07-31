cask "mditor" do
  version "0.3.0"
  sha256 "18c920bf76a217a0e23f36a6890831c6ba3b369350eb4c34b483740c49222d0c"

  url "https://github.com/mejiasd3v/mditor/releases/download/v#{version}/MDitor.zip"
  name "MDitor"
  desc "Native Markdown editor and viewer"
  homepage "https://github.com/mejiasd3v/mditor"

  depends_on macos: :big_sur

  app "MDitor.app"

  zap trash: "~/Library/Application Support/mditor"
end
