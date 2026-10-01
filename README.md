# Sushao's Homebrew tap

Homebrew installation for [Gupi](https://github.com/suxiaoshao/gupi), a native desktop workspace for Pi.

## Install

```sh
brew install --cask suxiaoshao/tap/gupi
```

Install and configure Pi separately. See the [English guide](https://github.com/suxiaoshao/gupi#installation) or [中文说明](https://github.com/suxiaoshao/gupi/blob/main/README.zh-CN.md#安装).

## Update and uninstall

```sh
brew update
brew upgrade --cask --greedy suxiaoshao/tap/gupi
brew uninstall --cask suxiaoshao/tap/gupi
```

The Cask declares Gupi's built-in updater with `auto_updates true`; `--greedy` explicitly includes it in Homebrew upgrades. Uninstall removes the application and keeps Gupi preferences and Pi data. There is no `zap` cleanup.

## Maintenance

`Update Gupi` checks the latest public stable Gupi release every six hours and can also be run manually with a version tag. It reads the release's `Gupi_<version>_distribution.tar.gz`, validates the Cask, and opens a versioned PR. Repeated runs reuse the existing branch/PR; they never force-push or downgrade the Cask. Merge the reviewed PR to make the version available.

Gupi's Rust xtask is the source of the generated Cask. Correct generation issues in the [Gupi repository](https://github.com/suxiaoshao/gupi), then use the matching immutable release metadata here. Workflow validation runs before PR creation; GitHub may ask a maintainer to approve additional PR workflow runs created by `GITHUB_TOKEN`.

Automation uses this repository's `GITHUB_TOKEN` with Contents and Pull requests write permissions. Enable **Allow GitHub Actions to create and approve pull requests** in this repository's Actions settings. No cross-repository write token or application signing key is used. GitHub can delay scheduled workflows or disable schedules on inactive public repositories; the manual trigger remains available.
