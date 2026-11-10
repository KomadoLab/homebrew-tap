# Komado Lab's Homebrew tap

Casks for apps made by [Komado Lab](https://komadolab.com).

## Paul Center

[Paul Center](https://paulcenter.ai/) is an AI assistant that places phone calls for you on your Mac. Let Paul take
the call.

```bash
brew install --cask komadolab/tap/paul-center
```

It installs the app that [paulcenter.ai/download](https://paulcenter.ai/download/) serves, checked against its
SHA-256. Paul Center needs macOS 14.4 or later. Homebrew can only require Sonoma (14.0), so on 14.0 to 14.3 update
macOS first. Paul Center is invite-only for now: setup asks for an invite code.

To remove it: `brew uninstall --cask paul-center`. `brew uninstall --zap --cask paul-center` also removes its
settings, recordings and caches. Neither touches your Keychain.

## About this repository

The cask is made in Paul Center's own repository and copied here when a release is published, so please don't edit it
here. Questions or problems: hello@komadolab.com.
