cask "mditor" do
  version "0.2.1"
  sha256 "9c19e5b8b12420884c7796735e4d1df3d8276febcdf73b5d54bfe7e465ccf31f"

  url "https://github.com/mejiasd3v/mditor/releases/download/v#{version}/MDitor.zip"
  name "MDitor"
  desc "Native Markdown editor and viewer"
  homepage "https://github.com/mejiasd3v/mditor"

  depends_on macos: :monterey

  app "MDitor.app"

  zap trash: "~/Library/Application Support/mditor"
end
