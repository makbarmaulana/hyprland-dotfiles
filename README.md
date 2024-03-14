<h1 align="center">
    My Hyprland Dotfiles
</h1>
<br />

## Details

| Aspect           | Software        |
|------------------|-----------------|
| OS               | Arch Linux      |
| Compositor       | Hyprland        |
| Status Bar       | waybar          |
| Display Manager  | sddm            |
| Terminal         | alacritty       |
| Shell            | zsh             |
| Editor           | neovim          |
| App Launcher     | wofi            |
| File Manager     | thunar          |
| Notifications    | dunst           |
<br/>

## Installations

### AUR Helper
```shell
sudo pacman -S base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

- Resolve missing firmware
```shell
yay -S mkinitcpio-firmware
```
<br/>

### Hyprland
- Base Package
```shell
yay -Sy hyprland xdg-desktop-portal-hyprland qt5-wayland qt6-wayland polkit-kde-agent dunst wofi alacritty starship thunar wlogout sddm sddm-sugar-candy-git networkmanager network-manager-applet bluez bluez-utils blueman pavucontrol pacman-contrib trizen inotify-tools bat eza fzf zoxide udisks2 man-db man-pages bash-completion neovim xclip wl-clipboard python-pynvim
```

- Fonts
```shell
yay -S ttf-dejavu ttf-liberation noto-fonts ttf-ubuntu-font-family ttf-font-awesome otf-font-awesome ttf-jetbrains-mono-nerd ttf-fira-code ttf-meslo-nerd-font-powerlevel10k
```

- Optional
```shell
zsh
kitty
hdparm gdisk
neofetch htop
ufw ufw-extras
github-cli curl wget
timeshift grub-btrfs xorg-xhost   // system restore utility
yazi ffmpegthumbnailer unar jq poppler fd rg fzf zoxide    // terminal file manager
```

- Enable services
```shell
sudo systemctl enable paccache.timer
sudo systemctl enable bluetooth.service
sudo systemctl enable sddm.service
```
<br/>

## Setup dotfiles

```shell
git clone --recursive https://github.com/makbarmaulana/hyprland-dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```
<br/>

> [!CAUTION]
> Installation script will overwrite your current configurations and establish symbolic links.

- Add/remove modules that you want to symlink
```shell
$EDITOR modules.sh
```

- Install dotfiles
```shell
./install.sh -i
```

- Uninstall dotfiles
```shell
./install.sh -U
```
<br/>

- Change default shell to zsh
```shell
chsh -s $(which zsh)
```
<br/>

### Apply SDDM Theme
```shell
cd ~/.dotfiles
sudo cp -r sddm.conf.d/ /etc
```
<br/>

## Keybinding
| Software          | KEY                        |
|------------------ |----------------------------|
| App Launcher      | SUPER                      |
| Terminal          | SUPER + RETURN             |
| File Manager      | SUPER + E                  |
| Browser           | SUPER + B                  |
| Suspend           | SUPER + L                  |
| Logout            | SUPER + M                  |
| Close App         | CTRL SHIFT + W             |
| Special Worspaces | SUPER + TAB                |
| Scroll Workspaces | SUPER + (j ,k)             |
| Move window       | SUPER CTRL + (h, j ,k ,l)  |
| Move focus window | SUPER SHIFT + (h, j ,k ,l) |
| Resize window     | CTRL ALT + (h, j ,k ,l)    |

