for f in *; do
    if [ -d $f ]; then
        echo "Installing config for $f in $HOME/.config/$f"
        rm -r $HOME/.config/$f
        ln -s $PWD/$f $HOME/.config/$f
    fi
done
