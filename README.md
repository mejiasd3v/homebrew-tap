# homebrew-tap

Homebrew tap for [MDitor](https://github.com/mejiasd3v/mditor), a fast, native macOS Markdown editor and viewer built with the Native SDK (markup + Zig, GPU-rendered, no browser).

## Install

```sh
brew tap mejiasd3v/homebrew-tap
brew install --cask mditor
```

The cask installs MDitor.app, registers it with LaunchServices, and sets it as the default handler for Markdown documents (`.md`, `.markdown`, `.mdown`, `.mkd`).

## Uninstall

```sh
brew uninstall --cask mditor
```

## Updating

Releases are published on the [mditor repository](https://github.com/mejiasd3v/mditor/releases). After a new release:

```sh
brew update && brew upgrade --cask mditor
```

## License

MIT
