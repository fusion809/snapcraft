# atom-fusion
![](http://i.imgur.com/LIV63rx.png)
This folder contains a [snapcraft.yaml](/snapcraft.yaml) file for building an Atom snap with the following packages removed:

* [exception-reporting](https://atom.io/packages/exception-reporting)

  **Rationale**: privacy concerns.

* [metrics](https://atom.io/packages/metrics)

  **Rationale**: privacy concerns.

* [about](https://atom.io/packages/about)

  **Rationale**: as the metrics package is disabled it is no longer accurate. So it is replaced by the about-arch package, which provides a better description.

* [language-gfm](https://atom.io/packages/language-gfm)

  **Rationale**: language-gfm2 provides additional syntax-highlighting of Liquid and HTML code inside GitHub-flavoured markdown files.

* [language-shellscript](https://atom.io/packages/language-shellscript)

  **Rationale**: language-unix-shell provides more comprehensive syntax-highlighting of the shell script syntax, hence it is going to replace it.

* [atom-dark-ui](https://atom.io/packages/atom-dark-ui), [atom-dark-syntax](https://atom.io/packages/atom-dark-syntax) and all other core themes.

  **Rationale**: the language-unix-shell package will not work properly with these, so it seems appropriate they be replaced with themes that will.


It also has the following added:

* [dark-bint-syntax](https://atom.io/packages/dark-bint-syntax) (by @Murriouz)

  **Rationale**:  It is the required theme for the language-unix-shell package, without it its syntax-highlighting is less helpful.

* [fusion-ui](https://atom.io/packages/fusion-ui)

  **Rationale**: It goes nicely with the dark-bint-syntax theme.

* [about-arch](https://atom.io/packages/about-arch)

  **Rationale**: Provides a more accurate About page than the about package does, for this particular build.

* [minimap](https://atom.io/packages/minimap)

  **Rationale**: Provides an overview of your file's contents. It is a very popular package, so it is likely to be installed by the user if it is not bundled with the Atom text editor.

* [pigments](https://atom.io/packages/pigments)

  **Rationale**: Provides colourization for hex codes and other colour indicators (e.g., rgb(255,255,255) would be highlighted white.

* [language-archlinux](https://atom.io/packages/language-archlinux)

  **Rationale**: Provides extra commands for doing some common Arch Linux package development actions like updating checksums. Arch Linux is a supported distribution for Snaps (in fact, I, Brenton Horne (a.k.a. @fusion809), am presently using Atom installed from this Snap to write this README), so it seems logical to add support for packaging this distribution to this build of Atom.

* [language-debian](https://atom.io/packages/language-debian)

  **Rationale**: Provides syntax-highlighting for Debian packaging files. Debian and its derivatives are supported distributions for Snaps, so the rationale for language-archlinux also applies here.

* [language-docker](https://atom.io/packages/language-docker)

  **Rationale**: Provides syntax-highlighting for Dockerfiles. Docker is a popular tool on Linux.

* [language-gentoo](https://atom.io/packages/language-gentoo)

  **Rationale**: Provides extra support for writing ebuilds and eclasses. It can be used to update your Manifests, provides you with snippets, *etc.*

* [language-gfm2](https://atom.io/packages/language-gfm2)

  **Rationale**: my fork of language-gfm that, with language-liquid, provides additional syntax-highlighting for HTML and Liquid code in GitHub-flavoured markdown files.

* [language-ini-desktop](https://atom.io/packages/language-ini-desktop)

  **Rationale**: a package for providing syntax-highlighting for desktop configuration files.

* [language-julia](https://atom.io/packages/language-julia)

  **Rationale**: a package for syntax-highlighting Julia files.

* [language-liquid](https://atom.io/packages/language-liquid)

  **Rationale**: provides syntax-highlighting of Liquid templates.

* [language-pascal](https://atom.io/packages/language-pascal)

  **Rationale**: provides syntax-highlighting for Pascal files.

* [language-patch2](https://github.com/fusion809/language-patch2)

  **Rationale**: provides syntax-highlighting for patch files.

* [language-rpm-spec](https://atom.io/packages/language-rpm-spec)

  **Rationale**: provides syntax-highlighting for RPM spec files.

* [language-rust](https://atom.io/packages/language-rust)

  **Rationale**: provides syntax-highlighting for Rust.

* [language-scala](https://atom.io/packages/language-scala)

  **Rationale**: provides syntax-highlighting for Scala.

* [language-unix-shell](https://atom.io/packages/language-unix-shell)

  **Rationale**: it is a package that provides extended syntax-highlighting for shell script, more comprehensive than the core language-shellscript package.

* [terminal-fusion](https://atom.io/packages/terminal-fusion)

  **Rationale**: it is a package that provides an embedded terminal for Atom. It has a Linux theme to it that's the default, as opposed to other terminal packages like platformio-ide-terminal and terminal-plus.

and its Electron version was bumped from 0.36.8 to 0.36.12 (0.36.12 is more stable on platforms with FreeType >=2.6.3). This build of Atom is intended to be not too much larger or slower, to start, than the default build of Atom. That is why most of the packages added were grammar-related, as they tend to have minimal effect on start up speed or the size of Atom.

## Building this Snap
If you want to build this Snap yourself, then assuming that Docker is installed run:

```bash
docker build .
```

from this folder. 
