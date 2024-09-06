{ config, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ];

config = {

#  boot.loader.timeout = 4;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

#  boot.kernelParams = [ "tsc=unstable" "vga=current" "vt.global_cursor_default=0" "boot.shell_on_fail" "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ];
  boot.initrd.systemd.dbus.enable = true;
#  services.kmscon.enable = true;
#  services.kmscon.hwRender = true;
#  services.picom.vSync = true;

#  nixpkgs.config.nvidia.acceptLicense = true;
#  hardware.opengl.enable = true;
#  hardware.opengl.driSupport = true;
#  hardware.opengl.driSupport32Bit = true;
#  hardware.opengl.extraPackages = with pkgs; [ intel-ocl intel-vaapi-driver ];
#  hardware.opengl.extraPackages32 = with pkgs; [ intel-vaapi-driver ];
#  hardware.nvidia.powerManagement.enable = true;
#  hardware.nvidia.open = false;
#  hardware.nvidia.modesetting.enable = true;
#  hardware.nvidia.nvidiaSettings = true;
#  services.xserver.videoDrivers = [ "modesetting" "fbdev" "nvidia-340xx-dkms" ];
#  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_340;
#  boot.extraModulePackages = [ config.boot.kernelPackages.nvidiaPackages.legacy_340 ];

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
#  networking.nat.enable = true;
#  networking.nat.internalInterfaces = [ "ve-+" ];
#  networking.nat.externalInterface = "wlp3s0";
#  networking.networkmanager.unmanaged = [ "interface-name:ve-+" ];

  time.timeZone = "Africa/Maseru";
  i18n.defaultLocale = "en_GB.UTF-8";
  services.xserver.xkb.layout = "za";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kyn = {
    isNormalUser = true;
    description = "kyn";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      gimp
      dune3d
      obsidian
      vesktop
      obs-studio
      brave
    ];
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [ "python-2.7.18.8" ];
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;
  programs.waybar.enable = true;

  environment.pathsToLink = [ "/share/zsh" ];
  programs.zsh.enable = true;
  programs.zsh.ohMyZsh.enable = true;
  programs.zsh.ohMyZsh.plugins = [ 
                                   "git"
                               ];
#  /* ALIASES */ programs.zsh.shellAliases = MyAliases;
  programs.zsh.autosuggestions.enable = true;
  programs.zsh.syntaxHighlighting.enable = true; 
  programs.fzf.fuzzyCompletion = true;
#  programs.fzf.keybindings
  programs.starship.enable = true;
  programs.git.enable = true;
  programs.yazi.enable = true;
  programs.firefox.enable = true;
  programs.firefox.package = pkgs.firefox-wayland;
  services.deluge.enable = true;
  environment.systemPackages = with pkgs; [
    clipse mako udiskie usbutils gammastep kitty fzf bemenu mpvpaper wlogout
    eww wallust pywal ripgrep bc python2 python3 python-qt gtk-layer-shell
    blueberry brightnessctl playerctl rofi-wayland grim slurp bottles lutris
    wine-wayland winetricks egl-wayland wayland-utils mangohud
    krabby neofetch pciutils lshw wl-clipboard ntfs3g hyprpicker hyprpaper hyprcursor]; # $ nix search
  fonts.packages = with pkgs; [nerdfonts font-awesome material-design-icons];

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;
  hardware.xone.enable = true;

  virtualisation.docker.enable = true;
  virtualisation.docker.storageDriver = "overlay2";
  virtualisation.docker.rootless.enable = true;
  virtualisation.docker.rootless.setSocketVariable = true;

  services.udisks2.enable = true;
  services.gvfs.enable = true;

security.polkit.enable = true;
#security.polkit.package = pkgs.polkit-dumb-agent;
  services.greetd = {
  enable = true;
  settings = rec {
    initial_session = {
      command = "${pkgs.hyprland}/bin/Hyprland";
      user = "kyn";
      };
    default_session = initial_session;
    };
  };

#  services.geoclue2.enable = true;
#  programs.dconf.enable = true;
  services.printing.enable = true;
  services.usbguard.dbus.enable = true;
  services.upower.enable = true;
  security.rtkit.enable = true;
#  services.jack.alsa.enable = true;
#  services.jack.jackd.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false; 

  system.stateVersion = "24.05"; # Did you read the comment?
};
}
