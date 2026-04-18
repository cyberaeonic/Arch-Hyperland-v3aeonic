# Contributing to Arch-Hyperland-v3aeonic

Thanks for your interest in contributing! Please read these guidelines before opening a PR.

## General Rules

- **One PR per feature/fix** — don't bundle personal preference changes with bug fixes
- If we don't personally need a feature, we may ask you to make it opt-in/configurable
- For large features, open an issue first to discuss before investing time

## Translations

See `dots/.config/quickshell/ii/translations/tools` for translation tooling.

## Code Style

### Dynamic Loading

- If something isn't always needed (especially behind a config toggle), put it in a `Loader`
  - Declare positioning props (e.g. `anchors`) on the `Loader`, not the `sourceComponent`
  - For dynamically loaded items that don't affect layout, use `FadeLoader` with `shown` prop

### Practical Concerns

- Don't add resource-heavy features for minor visual gains
- If a feature is fancy but impractical, gate it behind a config flag disabled by default

### Formatting

- Use **spaces**, not tabs
- Space operators: `if (condition) { ... }` not `if(condition){...}`
- Prefer early return over deep nesting
- Use `component` to declare reusable components in the same file when refactoring feels heavy

## Setting Up a Dev Environment

> Assumes Arch Linux (or Arch-based distro)

### Full Setup (recommended)

1. Install the dotfiles on a fresh user to avoid clobbering your config
2. Make changes, push to your fork, open a PR

### Partial Shell Setup

1. Install Hyprland + Quickshell dev:
   ```bash
   yay -S hyprland quickshell-git
   ```
2. Copy `dots/.config/quickshell` to `~/.config/quickshell`

### Quickshell LSP Setup

```bash
touch ~/.config/quickshell/ii/.qmlls.ini
```

VSCode: Install the **Qt Qml** extension, set custom exe path to `/usr/bin/qmlls6`

### Python

If your changes use Python packages/scripts, use the `uv` virtual environment — see `sdata/uv/README.md`.

## Running the Shell

1. Launch Hyprland (non-uwsm-managed)
2. Open `~/.config/quickshell/ii` in your editor
3. Run in terminal:
   ```bash
   pkill qs; qs -c ii
   ```
4. Edit files — changes reload live
