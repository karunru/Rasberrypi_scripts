# Rasberrypi_scripts

課研のRaspberry Piで使うコマンドとかスクリプト

## raspberry piのインストール時に使うコマンド
df -h

umount /dev/mmcblk0p1

dd if=2015-11-21-raspbian-jessie.img of=/dev/mmcblk0 bs=1M

## やったこと
echo "chromium --noerrdialog --kiosk http://nandakke.oedalab.jp" >> ~/.bashrc

echo "@lxterminal" >> /etc/xdg/lssession/LXDE-pi/autostart
