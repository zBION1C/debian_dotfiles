# ================================================== Installing Noctalia ==================================================
curl -fsSL https://pkg.noctalia.dev/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/noctalia.gpg
echo "deb [signed-by=/etc/apt/keyrings/noctalia.gpg] https://pkg.noctalia.dev/apt trixie main" | sudo tee /etc/apt/sources.list.d/noctalia.list
sudo apt update
sudo apt insatll nocatalia-shell
# =========================================================================================================================

for f in *; do
  if [ -d $f ]; then
    echo "Installing config for $f in $HOME/.config/$f"
    rm -r $HOME/.config/$f
    ln -s $PWD/$f $HOME/.config/$f
  fi
done
