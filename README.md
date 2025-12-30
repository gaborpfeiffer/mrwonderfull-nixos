# mrwonderfull-nixos

Multi-host **NixOS configuration** based on flakes, with shared modules and **devShell** support.

This repository is a personal / experimental NixOS setup managing multiple machines (hosts) in a unified structure with reusable components.

---

## ✨ Key Features

- 🧊 **Nix Flakes** based configuration
- 🖥️ **Multi-host** setup (host-specific NixOS configs)
- ♻️ **Shared modules** (`common/`)
- 🏠 **Home configurations** handled separately (`home/`)
- 🛠️ **devShell** for development environments
- 📦 100% declarative and reproducible setup

---

## 📁 Directory Structure

```text
.
├── flake.nix          # Flake entry point
├── common/            # Shared NixOS / module configurations
├── home/              # User-level settings
├── hosts/             # Host-specific configurations
│   └── thinky/        # Configuration for a specific machine
└── .gitignore
```

> Exact contents and module distribution may vary per host.

---

## 🖥️ Supported Desktop Environments

This setup currently supports the following desktop environments:

* **Cosmic**
* **GNOME**
* **KDE**
* **XFCE**


## 🚀 Usage

Coming soon...

> Replace `thinky` with the desired host name.

---

## 🛠️ DevShell

The flake may include development shells, usable with:

```bash
nix develop
```

---

## 🧩 Adding a Host

1. Create a new folder under `hosts/`
2. Define host-specific `configuration.nix` or modules
3. Register the host in the flake

---

## 📌 Requirements

- Nix with flake support
- NixOS (recommended: stable or unstable channel)

---

## 🧠 Notes

- This repo is intended for personal use but can serve as a starting point for your own multi-host NixOS setup
- The structure is easily extendable with additional machines or modules

---

## 📜 License

No explicit license specified. Use at your own risk.

---

