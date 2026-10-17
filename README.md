# yeniden-fedora

A tiny Fedora Linux command that restarts the computer when you type `yeniden` in a terminal.

## Features

- Installs the command at `/usr/local/bin/yeniden`.
- Requests a restart through `systemctl`.
- Uses `sudo` when run as a regular user.
- Includes an uninstall script.
- Uses only standard Fedora tools (`bash`, `systemctl`, and `sudo`).

## Requirements

- Fedora Linux (or another systemd-based Linux distribution)
- `systemd`
- `sudo` for running the command as a non-root user

## Install

Clone or download this repository, open a terminal in the project directory, and run:

```bash
chmod +x install.sh uninstall.sh bin/yeniden
./install.sh
```

The installer asks for your sudo password if needed. It installs the command to `/usr/local/bin/yeniden`.

## Usage

```bash
yeniden
```

The command requests an immediate system restart. Save your work before running it. If prompted, enter your sudo password.

## Uninstall

From the project directory, run:

```bash
./uninstall.sh
```

## Manual installation

If you prefer not to use the installer:

```bash
sudo install -D -m 0755 bin/yeniden /usr/local/bin/yeniden
```

To remove the manually installed command:

```bash
sudo rm /usr/local/bin/yeniden
```

## How to publish on GitHub

1. Create a new empty repository on GitHub named `yeniden-fedora`.
2. In this project directory, run:

   ```bash
   git init
   git add README.md LICENSE .gitignore install.sh uninstall.sh bin/yeniden
   git commit -m "Initial release"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/yeniden-fedora.git
   git push -u origin main
   ```

3. Replace `YOUR_USERNAME` with your GitHub username.

## License

MIT. See [LICENSE](LICENSE).
