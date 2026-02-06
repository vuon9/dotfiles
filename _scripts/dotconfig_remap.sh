MDF=$1

if [ -z $MDF ]; then
    echo "Please specify the folder"
    exit 1
fi

if [ ! -L ~/.config/$MDF ]; then
    echo "Coudln't find symlink '~/.config/$MDF'"
    exit 1
fi

unlink ~/.config/$MDF
ln -s $(pwd)/.config/$MDF ~/.config/$MDF