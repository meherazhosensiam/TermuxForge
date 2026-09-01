# TermuxForge

> A lightweight and automated Termux environment setup script for creating a customized Zsh-based terminal experience.

## Overview

**TermuxForge** automates the setup and customization of a Termux environment.

It installs and configures essential terminal utilities, Zsh, Oh My Zsh, and terminal customization components so you can get a usable and personalized shell environment without configuring everything manually.

The project is designed to keep the setup simple, reproducible, and easy to remove.

## Features

* Automated Termux package setup
* Zsh installation and configuration
* Oh My Zsh integration
* Zsh syntax highlighting
* Zsh command autosuggestions
* Custom Termux color configuration
* Custom terminal prompt
* Fast system information with Fastfetch
* Optional terminal branding with Figlet
* Simple installation and uninstallation scripts
* Designed specifically for Termux

## Requirements

* Android device
* [Termux](https://termux.dev/)
* Internet connection
* Sufficient storage for the installed packages

> **Note:** Use Termux from a trusted source such as F-Droid or the official Termux project. Avoid outdated or unofficial builds.

## Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/TermuxForge.git
cd TermuxForge
```

Make the installer executable:

```bash
chmod +x install.sh
```

Run it:

```bash
./install.sh
```

After installation, start Zsh:

```bash
zsh
```

## Uninstallation

To remove the TermuxForge configuration:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

The uninstaller removes the project's configuration, Oh My Zsh installation, and installed Zsh plugins.

It does **not** automatically remove common packages such as `git`, `curl`, or `nano`, because they may have already been installed by the user for other purposes.

## Project Structure

```text
TermuxForge/
├── install.sh
├── uninstall.sh
├── README.md
└── LICENSE
```

## Configuration

TermuxForge creates and configures:

```text
~/.zshrc
~/.oh-my-zsh/
~/.zsh/
~/.termux/colors.properties
```

You can modify the generated Zsh configuration after installation to add your own aliases, plugins, themes, and environment variables.

## Security

TermuxForge does not attempt to bypass Android security mechanisms, obtain root access, or perform unauthorized actions.

The installation script downloads third-party components from their respective upstream repositories. Review scripts before executing them if you want to verify exactly what will be installed or modified.

## Troubleshooting

### Zsh does not start

Try:

```bash
zsh
```

If you want to use Zsh automatically when opening Termux, configure your Termux shell accordingly rather than repeatedly launching it manually.

### Syntax highlighting is not working

Check that the plugin exists:

```bash
ls ~/.zsh/zsh-syntax-highlighting
```

Then verify that your `~/.zshrc` sources the plugin.

### Autosuggestions are not working

Check:

```bash
ls ~/.zsh/zsh-autosuggestions
```

If the directory does not exist, install the plugin and add its source command to `~/.zshrc`.

## Roadmap

Planned improvements may include:

* [ ] Interactive installation options
* [ ] Automatic dependency checking
* [ ] Better error handling
* [ ] Backup and restore of existing configuration
* [ ] Multiple Zsh themes
* [ ] Configurable color schemes
* [ ] Plugin management
* [ ] Update command
* [ ] Improved uninstaller
* [ ] Non-destructive installation mode

## Contributing

Contributions are welcome.

Before submitting a pull request:

1. Test the installation script on a clean Termux environment.
2. Test the uninstallation script.
3. Make sure existing user configuration is not unnecessarily overwritten.
4. Explain the purpose of your changes clearly.

For larger changes, open an issue first to discuss the proposed implementation.

## License

This project is released under the **MIT License**.

See [`LICENSE`](LICENSE) for the complete license text.

## Disclaimer

TermuxForge is provided as-is. The project is intended for terminal customization, environment setup, and educational purposes.

Users are responsible for reviewing and understanding scripts before executing them on their devices.
