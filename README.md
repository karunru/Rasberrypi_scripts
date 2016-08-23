# Rasberrypi_scripts

課研のRaspberry Piで使うコマンドとかスクリプト

## raspberry piのインストール時に使うコマンド
df -h

umount /dev/mmcblk0p1

dd if=2015-11-21-raspbian-jessie.img of=/dev/mmcblk0 bs=1M

## インストール後にやること

### static ipの設定
echo -e 'static ip_address=[設定したい静的IPアドレス]/24\n	\
				 static routers=[デフォルトゲートウェイのIPアドレス]\n	\
				 static domsin_name_server=[DNSサーバのIPアドレス]' >> /etc/dhcpcd.conf

### ディスプレイの余白の削除
sed -i -e 's/#disable_overscan=1/disable_overscan=1/g' /boot/config.txt

### chromiumのインストール
ここ(https://www.raspberrypi.org/forums/viewtopic.php?t=121195)を参考にした

wget -qO - http://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -
echo "deb http://dl.bintray.com/kusti8/chromium-rpi jessie main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install chromium-browser -y

### 日本語フォントのインストール
sudo apt-get install ttf-kochi-gothic xfonts-intl-japanese xfonts-intl-japanese-big xfonts-kaname

### スクリーンセーバーを起動させない
sed -i -e 's/@xscreensaver/#@xscreensaver/g' ~/.config/lxsession/LXDE-pi/autostart
echo -e '@xset s off\n	\
				 @xset -dpms\n	\
				 @xset s no-blank\n' >> ~/.config/lxsession/LXDE-pi/autostart

### chromiumを起動時に自動起動させる
echo '@/usr/bin/chromium-browser --noerrdialog --kiosk http://nandakke.oedalab.jp/ 1>/dev/null 2>/dev/null' >> ~/.config/lxsession/LXDE-pi/autostart
