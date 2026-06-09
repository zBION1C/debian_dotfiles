# ================================================== Installing Noctalia ==================================================
curl -fsSL https://pkg.noctalia.dev/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/noctalia.gpg
echo "deb [signed-by=/etc/apt/keyrings/noctalia.gpg] https://pkg.noctalia.dev/apt trixie main" | sudo tee /etc/apt/sources.list.d/noctalia.list
sudo apt update
sudo apt install noctalia-shell
# =========================================================================================================================

# ================================================== Installing Niri ======================================================
sudo apt-get install -y gcc clang libudev-dev libgbm-dev libxkbcommon-dev libegl1-mesa-dev libwayland-dev libinput-dev libdbus-1-dev libsystemd-dev libseat-dev libpipewire-0.3-dev libpango1.0-dev libdisplay-info-dev
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
git clone https://github.com/niri-wm/niri.git niri-repo && sudo mv niri-repo /opt/niri
cd /opt/niri && cargo build --release
cp /opt/niri/target/release/niri /usr/local/bin
cp /opt/niri/resources/niri-session /usr/local/bin
cp /opt/niri/resources/niri.desktop /urs/local/share/wayland-sessions
cp /opt/niri/resources/niri-portals.conf /urs/local/share/xdg-desktop-portal
cp /opt/niri/resources/niri.service /etc/systemd/user/
cp /opt/niri/resources/niri-shutdown.target /etc/systemd/user/
# =========================================================================================================================

for f in *; do
  if [ -d $f ]; then
    echo "Installing config for $f in $HOME/.config/$f"
    rm -r $HOME/.config/$f
    ln -s $PWD/$f $HOME/.config/$f
  fi
done
