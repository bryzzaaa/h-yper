Você disse:
echo ""
figlet H-yper
echo ""

if ! command -v adb &> /dev/null && [ ! -x "./adb" ]; then
    echo "Completed: ERROR!: No ADB. (2)"
    echo "Please install ADB."
    sleep 3.5
    exit 1
fi

if command -v adb &> /dev/null; then
    adb
    clear
else
    ./adb
    clear
fi

chmod +x adb
chmod +x fastboot
chmod +x hyper.sh
echo ""
figlet options
echo ""
echo "[1] Reboot into bootloader"
echo "[2] Reboot into bootloader and then reboot"
echo "[3] Check root"
echo "----------DANGEOURS AREA----------"
echo "[4] Android shell"
echo ""
read -p ": " option1
if [ "$option1" == "1" ]; then
    sleep 1.5
    ./adb reboot bootloader
    echo "Completed."
    ./hyper.sh
elif [ "$option1" == "2" ]; then
    sleep 1.5
    ./adb reboot bootloader
    sleep 1.5
    ./fastboot reboot
    echo "Completed."
    sleep 1.5
    ./hyper.sh
elif [ "$option1" == "4" ]; then
    echo "[please connect usb]"
    ./adb shell
    ./hyper.sh
elif [ "$option1" = "3" ]; then
    if ./adb shell su -c "id" 2>/dev/null | grep -q "uid=0"; then
        echo "Device is rooted."
    else
        echo "Device is not rooted."
    fi
    sleep 2
    ./hyper.sh
elif [ "$option1" == "13579" ]; then
    figlet -f slant "BRICK MODE"
    echo "Welcome to the darkness."
    echo "One wrong move and it's over."
    sleep 2

    echo "-----BRICK AREA-----"
    echo "use it at your own risk."
    echo "[1] COMPLETE brick (delete dtbo)"
    read -p ": " option2
    if [ "$option2" == "1" ]; then
        ./adb reboot bootloader
        sleep 1.5
        ./fastboot erase dtbo
        echo "Complete."
        sleep 1.5
        ./hyper.sh
    else
        echo "Completed: ERROR!: Invalid. (135791)"
    fi

else
    echo ""
    echo "Invalid."
    echo "Completed: ERROR!: Invalid. (1)"
    sleep 3.5
    ./hyper.sh
fi