MDF=$1

if [ -z $MDF ]; then
    echo "Please specify the folder"
    exit 1
fi

if [ ! -s ~/.config/$MDF ]; then
    echo "Coudln't find folder '$MDF' under ~/.config"
    exit 1
fi

mv ~/.config/$MDF .; ln -s $(pwd)/$MDF ~/.config/$MDF
echo "Done"