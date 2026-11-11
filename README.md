# atlis-svg Gentoo overlay

Personal Portage overlay with `flint`, the 2D vector animation and game editor.

## Using it

Add the overlay to `/etc/portage/repos.conf/atlis-svg.conf`:

```
[atlis-svg]
location = https://github.com/atlis-svg/gentoo-overlay.git
priority = 1
```

Allow the package for your architecture in `/etc/portage/package.accept_keywords/flint-bin`:

```
media-gfx/flint-bin ~amd64
```

Then:

```bash
emerge flint-bin
```

This installs `flint` (the editor) and `flint-player` (the player and Hub client)
into `/usr/bin`.

## Packages

| Atom | Description |
| --- | --- |
| `media-gfx/flint-bin` | Prebuilt binary from the GitHub releases. `~amd64` only. |

## Notes

* The `-bin` package installs the release build; it does not build from source.
* It is a binary package, so there is no `USE` flag or `src_compile` phase — just unpack
  and install.
* `RDEPEND` is `x11-libs/libxkbcommon` for the X11/Wayland windowing libraries.
