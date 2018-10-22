#/bin/bash
mkdir build
cd build
apt-get -q install git scons g++ libglibmm-2.4-dev libpulse-dev pkg-config
git clone https://github.com/Olga-Yakovleva/RHVoice.git
cd RHVoice

scons

sudo scons install

sudo ldconfig

sudo cp -a /usr/local/bin/sd_rhvoice /usr/lib/speech-dispatcher-modules
cp ./rhvoice.conf /etc/speech-dispatcher/modules/
# дополнительные действия
# sudo nano /etc/speech-dispatcher/speechd.conf
# добавить модуль
#AddModule "rhvoice" "sd_rhvoice" "rhvoice.conf"
