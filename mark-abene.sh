#!/bin/bash

# Tool Name: MARK-ABENE
# Version: 1.0

clear
echo -e "\e[35m"
echo "  __  __          _____  _  __ "
echo " |  \/  |   /\   |  __ \| |/ / "
echo " | \  / |  /  \  | |__) | ' /  "
echo " | |\/| | / /\ \ |  _  /|  <   "
echo " | |  | |/ ____ \| | \ \| . \  "
echo " |_|  |_/_/    \_\_|  \_\_|\_\ "
echo -e "                               \e[0m"

echo -e "\e[33m          >>> MARK-ABENE Downloader v1.0 <<<\e[0m"
echo ""
echo -e "\e[36m< A > Download YouTube Video"
echo "< B > Download Facebook Video"
echo "< C > Download Instagram Video"
echo "< D > Download TikTok Video"
echo "< E > Download Others Video"
echo "< F > Join Telegram Channel"
echo "< G > Report A Problem"
echo "< X > Exit Programme\e[0m"
echo ""

read -p "</> Choice Option : " choice

case $choice in
    A|a)
        read -p "Enter YouTube URL: " url
        yt-dlp -o "/sdcard/MARK-ABENE/YT-%(title)s.%(ext)s" "$url"
        ;;
    B|b)
        read -p "Enter Facebook URL: " url
        yt-dlp -o "/sdcard/MARK-ABENE/FB-%(title)s.%(ext)s" "$url"
        ;;
    C|c)
        read -p "Enter Instagram URL: " url
        yt-dlp -o "/sdcard/MARK-ABENE/IG-%(title)s.%(ext)s" "$url"
        ;;
    D|d)
        read -p "Enter TikTok URL: " url
        yt-dlp -o "/sdcard/MARK-ABENE/TK-%(title)s.%(ext)s" "$url"
        ;;
    E|e)
        read -p "Enter Other Video URL: " url
        yt-dlp -o "/sdcard/MARK-ABENE/VID-%(title)s.%(ext)s" "$url"
        ;;
    F|f)
        xdg-open "https://t.me/yourchannel"
        ;;
    G|g)
        echo "Opening Report Form..."
        xdg-open "https://t.me/yourprofile"
        ;;
    X|x)
        echo "Thanks for using MARK-ABENE!"
        exit
        ;;
    *)
        echo "Invalid Option!"
        ;;
esac
