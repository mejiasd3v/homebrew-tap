cask "mditor" do
  version "0.3.0"
  sha256 "fc4cfd04cda37a30d005209b75de2de41c319e682ee534c4a107a9e1c64e3f74"

  url "https://github.com/mejiasd3v/mditor/releases/download/v#{version}/MDitor.zip"
  name "MDitor"
  desc "Native Markdown editor and viewer"
  homepage "https://github.com/mejiasd3v/mditor"

  depends_on macos: :big_sur

  app "MDitor.app"

  zap trash: "~/Library/Application Support/mditor"
end
