# debwin 🪟🐧

![debwin logo](https://raw.githubusercontent.com/carjam120443-netizen/debwin/main/config/includes.chroot/usr/share/pixmaps/debwin-logo.svg)

**A Debian-based, Windows-inspired Linux distribution project.**

debwin is an independent Linux OS project built from Debian using **Debian Live / live-build**.
The goal is a familiar desktop for people who like the workflow of Windows while keeping the
freedom and package ecosystem of Linux.

> 🚧 **Early development:** debwin is a work in progress. Initial builds are for testing,
> especially in virtual machines.

## ✨ Current plan

- 🐧 Debian Trixie base
- 🖥️ Xfce desktop
- 🪟 Windows-inspired bottom panel
- 📋 Whisker Menu support
- 🎨 Arc + Papirus styling
- 🖼️ Custom debwin wallpaper and logo
- 📁 Thunar file manager
- 🌐 NetworkManager
- 🦊 Firefox ESR
- 🛠️ Common administration and development tools
- 💿 Git-controlled live-build configuration
- 🤖 GitHub Actions ISO builds
- 📦 Calamares installer
- 🐚 Optional Zsh shell during installation
- ✨ Optional Oh My Zsh setup after installation
- 📜 Clear credits and license information

## 🏗️ How it works

This repository does not contain a copy of the Linux kernel or the entire Debian source tree.
Instead, it contains the configuration used to assemble a Debian-based live system.

```text
Git repository
     │
     ├── package lists
     ├── desktop configuration
     ├── branding
     ├── build scripts
     └── GitHub Actions
             │
             ▼
        Debian live-build
             │
             ▼
       bootable debwin ISO
```

That keeps the project small, understandable, and easy to modify.

## 🚀 Build locally

On a Debian-based build machine:

```bash
sudo apt update
sudo apt install live-build debootstrap squashfs-tools xorriso grub-pc-bin grub-efi-amd64-bin mtools dosfstools
git clone https://github.com/carjam120443-netizen/debwin.git
cd debwin
chmod +x auto/config auto/build build.sh config/hooks/live/0100-debwin.chroot
./build.sh
```

For the easiest testing workflow, boot the resulting ISO in VirtualBox first.

## 🐚 Shell choices

Calamares includes an **Optional software** page where the user can choose **Zsh** during
installation. Bash remains the default unless the user changes their shell.

If Zsh is installed, debwin also offers an explicit first-login choice to install
**Oh My Zsh** for that user. This keeps the framework user-specific instead of installing
it system-wide.

Oh My Zsh requires Zsh and supports installation through its official installer.

## 🤖 GitHub Actions

The workflow can build debwin automatically on pushes to `main`, pull requests, and manual
workflow runs.

It:

1. Checks out the repository.
2. Installs live-build and image-building dependencies.
3. Builds the Debian-based live image.
4. Uploads the ISO as an Actions artifact.
5. Uploads the generated checksum when available.

Workflow:

```text
.github/workflows/build.yml
```

## 📁 Repository layout

```text
debwin/
├── .github/workflows/build.yml
├── auto/
│   ├── config
│   └── build
├── config/
│   ├── hooks/live/
│   ├── includes.chroot/
│   └── package-lists/
├── build.sh
├── CREDITS.md
├── LICENSE
└── README.md
```

## 🎯 Roadmap

### 0.1 — First bootable build

- [x] Debian live-build structure
- [x] Xfce desktop
- [x] Basic debwin branding
- [x] Windows-inspired panel positioning
- [x] GitHub Actions build
- [x] Credits and license documentation

### 0.2 — Desktop polish

- [x] Custom debwin logo
- [x] Custom debwin wallpaper
- [ ] Better Start-menu layout
- [ ] Custom panel launchers
- [ ] More Windows-like window decorations
- [ ] More original artwork
- [ ] Default desktop shortcuts

### 0.3 — Installer and system integration

- [x] Calamares included in the live image
- [x] Optional Zsh selection
- [x] Optional Oh My Zsh first-login setup
- [ ] Test Calamares installation
- [ ] Custom installer branding
- [ ] First-run setup
- [ ] debwin configuration utility
- [ ] Improved hardware/firmware handling

### 1.0 — debwin

- [ ] Stable release process
- [ ] Versioned ISO releases
- [ ] Release notes
- [ ] Automated checksums
- [ ] Full third-party license inventory
- [ ] VirtualBox testing matrix

## 📜 Licensing

Original debwin-authored code and configuration are MIT licensed.

Original debwin artwork is CC BY 4.0 unless otherwise noted.

The ISO also contains software from Debian and other upstream projects. Those components keep
their own licenses and copyright notices. See [CREDITS.md](CREDITS.md) and the
`/usr/share/doc/*/copyright` files inside the built system.

**debwin is not an official Debian release and is not affiliated with or endorsed by the
Debian Project.**

## 🔗 Upstream projects

- [Debian](https://www.debian.org/)
- [Debian Live / live-build](https://salsa.debian.org/live-team/live-build)
- [Xfce](https://www.xfce.org/)
- [Whisker Menu](https://gottcode.org/xfce4-whiskermenu-plugin/)
- [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [Arc theme](https://github.com/jnsh/arc-theme)

## ❤️ Why debwin?

Making a Linux distro does not have to mean writing a kernel from scratch.

debwin takes a solid Debian base and turns it into a familiar, customizable desktop that feels
like **its own operating system**.

---

**debwin — Debian underneath. Windows-inspired on top.**
