# Ubuntu-Trusty-Tahr-Nexus-7-2012-grouper-tilapia

Chạy Linux thuần thì xem bài này

https://tinhte.vn/thread/cai-postmarketos-len-nexus-7-2012-wifi-3g-dung-luong-8gb-16gb-32gb.3179205/



Bài bị xoá không rõ nguyên nhân

https://tinhte.vn/threads/cai-postmarketos-len-nexus-7-2012-16gb.3113099/?_xfNoRedirect=1#post-56448223



Nếu không muốn chạy Linux thuần thì có thể chạy dualboot Android và Linux. Cách làm là cài MultiROM của Tasssarda, mà hiện tại link đã die sạch nên chỉ có link này



Nexus 7 2012

TWRP MultiROM grouper full package(wifi)

https://www.mediafire.com/file/g9dcifft7fv2vfy/grouper.zip/file



TWRP MultiROM tilapia full package(3G)

https://www.mediafire.com/file/ow77ex66la4rgfr/tilapia.zip/file



Nexus 7 2013

TWRP MultiROM deb full package(wifi)

https://www.mediafire.com/file/147sntaakt5xk5s/deb.zip/file



TWRP MultiROM flo full package(3G)

https://www.mediafire.com/file/z0rdlu2cryd3h84/flo.zip/file



TWRP_multirom_grouper_20160210.img

http://www.mediafire.com/file/jjd0hgtdf4beeji/TWRP_multirom_grouper_20160210.img/file



Kernel_kexec_grouper_5.1 cho Android 5.1

http://www.mediafire.com/file/k2a1dp4gtz2skpo/kernel_kexec_grouper_510.zip/file



Kernel_kexec_grouper-4.3 cho Android 4.3

http://www.mediafire.com/file/9jnbhoi2jqrck75/kernel_kexec_grouper-430-2.zip/file



MultiROM_Manager Apps

http://www.mediafire.com/file/r7kk8mono1th619/MultiROM_Manager_v1.188_apkpure.com.apk/file



MultiROM core

http://www.mediafire.com/file/bsmfixl6rq1j0cn/multirom_v10_n7-signed.zip/file



http://www.mediafire.com/file/3uqryjrmyc40jba/multirom-20160207-v33-grouper.zip/file



Multirom Full package:



http://www.mediafire.com/file/2xbdacvn3v0aetz/multirom-20160207-v33-grouper-full.zip/file



Hoặc đây của JT1510365: https://androidfilehost.com/?a=show&w=files&flid=212295



Bắt đầu, root và unlock bootloader bằng tools Nexus root toolkit v2.1.9 của wugfresh



https://www.google.com/amp/s/www.wugfresh.com/nrt/amp/



http://www.mediafire.com/file/d9kssrtg1dtnx3l/NRT_v2.1.9.sfx.zip/file



Đưa máy về bootloader và flash TWRP_multirom_grouper_20160210.img bằng



$ fastboot flash recovery TWRP_multirom_grouper_20160210.img



Vào TWRP chọn install và flash kexec cho kernel 5.1(nếu đang chạy android 5.1) hoặc kexec cho bảng android đang dùng. Nếu muốn cài apps thì khởi động lại cài thêm multirom manager apk để dễ điều khiển trong android



Download file mrom từ github Gabriel Couto:

https://github.com/gabrielrcouto/nexus7-ubuntu-12-04

Dự phòng:

http://www.mediafire.com/file/sz83d1vrv8p9d0d/ubuntu-12-04.mrom/file



Vào TWRP, chọn MultiROM, chọn Add ROM, chọn *.mrom, chọn Internal memory hoặc usb-otg, chọn file đã download và flash, reboot khi đã xong. Nếu cài vào internal memory, mrom linux sẽ nằm trong /data/media/0/multirom/roms



Khởi động vào ubuntu 12.04 và làm theo các bước:



1. Download & install *.mrom to deploy Unbuntu 12.04 LTS, follow his guide to connect wifi, wpa_passphrase to create wpa.conf, wpa_supplicant to connect, then dhclient wlan0(checking connect "ping -c 4 google.com")

 https://github.com/gabrielrcouto/nexus7-ubuntu-12-04/blob/master/README.md



2. Update linux firmware 3.1.10-8.28-grouper on launchpad.net. Run



$ sudo su (id:ubuntu/pass:ubuntu)



$ wget http://launchpadlibrarian.net/167650013/linux-image-3.1.10-8-grouper_3.1.10-8.28_armhf.deb



Dự phòng: http://www.mediafire.com/file/iuwjjruufakul6h/linux-image-3.1.10-8-grouper_3.1.10-8.28_armhf.deb/file



Install linux kernel update.



$ dpkg -i linux-image-3.1.10-8-grouper_3.1.10-8.28_armhf.deb



$ sudo vi sudoers



Add ubuntu user to root ALL permission



username ALL=(ALL) ALL



Add new repository for Ubuntu ports Precise



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ precise main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ precise-security main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ precise-updates main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ precise-proposed main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ precise-backports main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



Next upgrade last version 12.04.5(Precise)



$ apt-get dist-upgrade



3. Upgrade Ubuntu 14.04.6 LTS by editing sources.list, need $root/pass run in terminal



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ trusty main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ trusty-security main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ trusty-updates main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ trusty-proposed main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



$ echo "deb http://ports.ubuntu.com/ubuntu-ports/ trusty-backports main universe restricted multiverse" | sudo tee -a /etc/apt/sources.list



Trước khi upgrade nên hold 15 package vì nvidia chỉ hỗ trợ accelerate graphics đến thư viện abi 14 tương đương xorg phiên bản 14. Ubuntu 14.04 Trusty Tahr đòi hỏi abi cho xorg phiên bản 15, nvidia đã không còn hỗ trợ từ abi phiên bản 14



$sudo apt-mark hold libgl1-mesa-dri libxfixes3 libxi6 xserver-xorg-core xserver-xorg-input-evdev xserver-xorg-input-synaptics xserver-xorg-input-wacom xserver-xorg-video-all xserver-xorg-video-ati xserver-xorg-video-fbdev xserver-xorg-video-mach64 xserver-xorg-video-nouveau xserver-xorg-video-r128 xserver-xorg-video-radeon xserver-xorg-video-vesa



$ apt-get upgrade



After upgrade, I recommend install LXDE/LXDM



$ apt-get install lxde lxdm



4. Addons package: install wicd to manage wifi connection,chromium-browser,firefox 57, xfce4-power-manager, onboard virtual keyboard, ubuntu-restricted-extras, xfce4-mixer, ubuntu-tweak, synaptic, indicator-brightness,pavucontrol.



Dosbox của odroid:

http://www.mediafire.com/file/jjs6rrpkf4u5dpj/dosbox-odroid_0.7.4-3_armhf.deb/file



Firefox 57 quantum

http://www.mediafire.com/file/oz50ojwu7g01cyz/firefox_57.0%2Bbuild4-0ubuntu0.14.04.5_armhf.deb/file



Brightness indicator

http://www.mediafire.com/file/qu0wi1onb8mw8w9/indicator-brightness_0.4%7Ebzr11%7Eubuntu14.10.1_all.deb/file



Conky config file

http://www.mediafire.com/file/pclfc4ioyjrxpbp/conky.conf/file



Bleachbit for ubuntu 14.04

http://www.mediafire.com/file/1vn46u6gfee862x/bleachbit_4.0.0_all_ubuntu1404.deb/file



Ubuntu Tweak Tool

http://launchpadlibrarian.net/167143064/unity-tweak-tool_0.0.6ubuntu1_all.deb



Retroarch

http://www.mediafire.com/file/1vuq7tj6pb3hfnd/Retroarch_addons.zip/file



Sysctl.conf

http://www.mediafire.com/file/i4ib163nl1wv8q4/file



$ sudo dpkg -i <package name.deb>



$ sudo apt-get -f install



Quản lý vm trong sysctl, bổ sung 1 ít thông số của Ktweak trên github của tytydraco(xda-developers)



Tham khảo:

https://github.com/tytydraco/KTweak



$ sudo sysctl -w vm.swappiness=100



$ sudo sysctl -w vm.vfs_cache_pressure=200



$ sudo sysctl -w vm.dirty_background_ratio=1



$ sudo sysctl -w vm.dirty_ratio=2



$ sudo sysctl -w vm.dirty_background_bytes=16777216

$ sudo sysctl -w vm.dirty_bytes=33554432



$ sudo sysctl -w vm.min_free_kbytes=4096



$ sudo sysctl -w vm.user_reserve_kbytes=8192 #default 31979



$ sudo sysctl -w vm.admin_reserve_kbytes=4096 #default 8192



$ sudo sysctl -w vm.panic_on_oom=1



$ sudo sysctl -w kernel.panic=1



$ sudo sysctl -w vm.overcommit_memory=0



$ sudo sysctl -w vm.overcommit_ratio=50



$ sudo sysctl -w vm.drop_caches=3



$ sudo sysctl -w vm.oom_kill_allocating_task=1



$ nano /etc/sysctl.conf

vm.swappiness=20
vm.vfs_cache_pressure=80
vm.min_free_kbytes=4096
vm.mmap_min_addr=8192
vm.dirty_background_bytes=16777216
vm.dirty_bytes=33554432
vm.dirty_background_ratio=1
vm.dirty_ratio=2
vm.drop_caches=3
vm.panic_on_oom=1
kernel.panic=1
vm.overcommit_memory=0
vm.dirty_writeback_centisecs=2000
vm.dirty_expire_centisecs=1000
vm.lowmem_reserve_ratio=256 32 32
vm.oom_kill_allocating_task=1
vm.highmem_is_dirtyable=1

vm.oom_dump_tasks=0
#1

vm.page-cluster=0
#3

vm.stat_interval=10
#1

kernel.threads-max=5000
#15502
kernel.shmmax=268435456
#33554432
kernel.msgmni=2048
#721
kernel.msgmax=64000
#8192
kernel.sem=500 521000 64 2048
#250 32000 32 128
kernel.sched_child_runs_first=0
#0

kernel.sched_tunable_scaling=0
#1

kernel.sched_latency_ns=18000000
#18000000

kernel.sched_min_granularity_ns=1500000
#2250000

kernel.sched_migration_cost=5000000
#500000

kernel.sched_nr_migrate=4
#32

kernel.sched_wakeup_granularity_ns=3000000
#3000000

net.ipv4.tcp_ecn=1
#2

net.ipv4.tcp_syncookies=0
#1

net.ipv4.tcp_timestamps=0
#1

net.ipv4.tcp_tw_recycle=1
#0

net.ipv4.tcp_tw_reuse=1
#0

net.ipv4.tcp_wmem=6144 87380 524288
#4096 16384 389760

net.ipv4.tcp_rmem=6144 87380 524288
#4096 87380 389760

net.core.wmem_max=524288
#131071

net.core.rmem_max=524288
#131071

fs.file-max=99190


$ sudo sysctl -p


https://glassonionblog.wordpress.com/2013/01/27/increase-ulimit-and-file-descriptors-limit/


https://josetips.wordpress.com/2016/11/04/linux-freeze-on-high-memory-consumption/


https://blogd.net/linux/cach-tang-so-luong-gioi-han-tep-mo-linux/


$ ulimit -v 15000000


$ sudo nano /etc/security/limits.conf


* soft nofile 11903


* hard nofile 11903


* hard as 15000000


5. Note: DO NOT USE "$ apt-get dist-upgrade" in 14.04. The screen will rotate cuz graphic change nvidia terga3 to fbdev_tegra(stable but slow),cus Xorg abi is 15, but nvidia driver stop at abi 14, its a conflict version. To solve this problem, we edit "leafpad /etc/X11/Xorg.conf". Insert Option "Rotate" "CW" on Monitor and 2 Screen defined.


Using normal upgrade and install package manually, do not upgrade xserver-xorg-core. We'll stay at xserver 1.11 compatible with nvidia driver abi 11


TransformationMatrix is "1 0 0  0 1 0  0 0 1". Using commandline "gtf 1280 800 0" in terminal to get exactly resolution 1280x800@0hz, edit "HorizSync","VertRefresh","ModeLine" in "Section 'Monitor'" in /etc/X11/xorg.conf


Vsync 0

Hsync 0



ModeLine "1280x800x58.6" 68.00 800 824 848 880 1280 1285 1286 1318

(77.3 kHz eP)



Install Mojave/Arc_OSX theme and icon, capitan cursor theme for openbox (box-look.org and xfce-look.org)to getting good graphic application



6. Some bugs like freezes, shutdown, restart cuz CPU, GPU, Ram got overheat. So I decide to control frequency, I edit CPU frequency first. Install cpufrequtils, indicator-cpufreq. The maximum CPU frequency is 51Mhz to 1.3Ghz for ondemand. And add your user to system groups



$ nano /etc/rc.local



sleep 60



#cpufreq-set -g ondemand



cpufreq-set --cpu 0 -d 51000 -u 1300000 -g ondemand



cpufreq-set --cpu 1 -d 51000 -u 1300000 -g ondemand



cpufreq-set --cpu 2 -d 51000 -u 1300000 -g ondemand



cpufreq-set --cpu 3 -d 51000 -u 1300000 -g ondemand



# Reduce the boost ignore_nice_load to 0 (có hai giá trị 0 và 1)

echo 0 > /sys/devices/system/cpu/cpufreq/ondemand/ignore_nice_load



# Reduce the boost io_is_busy to 1 ( có hai giá trị 0 và 1)

echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy



# Reduce the boost powersave_bias to 0 (giá trị thay đổi từ 0-1000)

echo 0 > /sys/devices/system/cpu/cpufreq/ondemand/powersave_bias



# Reduce the boost sampling_down_factor to 10 (giá trị thay đổi từ 1-4)

echo 10 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor



# Reduce the boost sampling_rate to 40000 (giá trị thay đổi từ 10000 - 300000)

echo 40000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate



# Reduce the boost sampling_rate_min to 20000 (giá trị thay đổi từ 10000 - 300000)

echo 20000 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate_min



# Reduce the boost threshold to 95% (giá trị thay đổi từ 1-100)

echo 95 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold


for queue in /sys/block/*/queue

do

# Choose the first governor available

avail_scheds="$(cat "$queue/scheduler")"

for sched in cfq noop kyber bfq mq-deadline none

do

 if [[ "$avail_scheds" == *"$sched"* ]]

 then

  echo "$sched" > "$queue/scheduler"

  break

 fi

done



# Do not use I/O as a source of randomness

echo 0 > "$queue/add_random"



# Disable I/O statistics accounting

echo 0 > "$queue/iostats"



# Reduce heuristic read-ahead in exchange for I/O latency

echo 256 > "$queue/read_ahead_kb"



# Reduce the maximum number of I/O requests in exchange for latency

echo 512 > "$queue/nr_requests"

echo 2 > "$queue/rq_affinity"

echo 128 > "$queue/max_sectors_kb"

done


$ nano /etc/init.d/cpufrequtils



#Line 42-45

 ENABLE="true"

GOVERNOR="ondemand"

MAX_SPEED=1300000

MIN_SPEED=51000



CPU Hotplugging



https://developer.toradex.com/knowledge-base/cpu-hot-plugging-linux#Colibri_T20_ApalisColibri_T30_and_Apalis_TK1



Turn off low-power core migration:



# sudo echo Y > /sys/module/cpu_tegra3/parameters/no_lp



Turn on automatic CPU hotplugging:



# sudo echo 0 > /sys/module/cpu_tegra3/parameters/auto_hotplug

$ sudo echo 0 > /sys/module/cpu_tegra3/parameters/auto_hotplug

echo 25 > /sys/module/cpu_tegra3/parameters/balance_level

echo 60000 > /sys/kernel/debug/tegra_thermal/shutdown_temp_tj

echo 58000 > /sys/kernel/debug/tegra_thermal/throttle_temp_tj

echo 1 > /sys/kernel/cluster/immediate
echo 1 > /sys/kernel/cluster/force
#echo "G" > /sys/kernel/cluster/active

echo 1 > /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/devices/system/cpu/cpu2/online
echo 1 > /sys/devices/system/cpu/cpu3/online

7. Thiết lập sound card bằng alsamixer, dùng pavucontrol(pulse audio) để khuếch đại âm thanh và cài xfce4-mixer để quản lý alsa sound bằng GUI



$ alsamixer



Enable các thông số thiết lập (phím M hoặc phím mũi tên lên/xuống): "Speaker R" "Speaker L" "DAC MIXR INF1" "DAC MIXL INF1" "SPOL MIX DAC R1" "SPOL MIX DAC L1" "Stereo DAC MIXR DAC R1" "Stereo DAC MIXL DAC L1"



8. Install bluetooth: i read and researched, compared docs about bluetooth at all time. I realize bluetooth relative with firmware driver/patchram/rfkill/bluez-utils/build-essential/blueman. fw is bcm4330.bin,patchram is brcm_patchram_plus(i get it in ubuntu-defaults-nexus7), i had rfkill/bluez-utils(bluez version 4.01)/blueman to control bluetooth on nexus7 2012



Follow ylixir on:

https://docs.google.com/document/u/0/d/1G9vF5v2TN2c6ocyb_hmD1ve7OK4GdCP84rfaXgiLmB4/mobilebasic



Dùng Archlinux nhưng vẫn kích hoạt được bluetooth trên ubuntu đc



(http://www.mediafire.com/file/9640y9x0wa07jab/arch_20130626.mrom/file



Server Tardis source: http://tardis.tiny-vps.com/aarm/repos/2015/12/31/os/tegra



Tardis Repository: http://tardis.tiny-vps.com/aarm/repos/2015/12/31/armv7h/$repo



Protofusion repository for ArchLinux ARM rollback:



http://mirror.protofusion.org/archlinuxarm-rollback/2013/12/13/armv7h/$repo



Bypass Fatal error: kernel too old using



$ pacman -Syu



Chúc các bạn thành công cài Ubuntu 14.04.6LTS và Archlinux lên Nexus 7 và dual boot cùng Android



optimize chromium trong chrome://flags



https://www.techidence.com/30-google-chrome-flags-to-improve-browser-speed/



$ leafpad /usr/share/applications/chromium.desktop



Sửa dòng Exec = chromium-browser %U thành



Exec =

chromium-browser --enable-pinch --force-device-scale-factor=1.25 --use-gl=egl --ppapi-flash-path=/usr/lib/chromium-browser/plugins/libpepflashplayer.so --ppapi-flash-args=enable_stagevideo_auto=0 --ppapi-flash-version=12.0.0.77 --password-store=detect --user-data-dir --max-tiles-for-interest-area=512 --num-raster-threads=4 --default-tile-height=512 --enable-features=CheckerImaging --enable-native-gpu-memory-buffers --disk-cache-size=419430400 --flag-switches-begin --blink-settings=disallowFetchForDocWrittenScriptsInMainFrame=true --enable-experimental-canvas-features --enable-experimental-fullscreen-exit-ui --enable-experimental-web-platform-features --enable-fast-unload --enable-gpu-rasterization --javascript-harmony --enable-quic --enable-scroll-prediction --use-simple-cache-backend=on --enable-tcp-fastopen --enable-zero-copy --gpu-rasterization-msaa-sample-count=0 --ignore-gpu-blacklist --enable-lcd-text --num-raster-threads=2 --enable-smooth-scrolling --v8-cache-options=parse --enable-features=CheckerImaging,NoScriptPreviews,OverlayScrollbar,ParallelDownloading,ScrollAnchoring,V8VmFuture --flag-switches-end

%U



Thêm cache ram lên fstab



$ sudo leafpad /etc/fstab



tmpfs /home/<username>/.cache/chromium/ tmpfs noatime,nodiratime,nodev,nosuid,mode=1777,size=400 0 0



firefox-esr config gõ about:config vào thanh URL và tìm sửa theo bên dưới:



Set browser.download.animateNotifications to False

Set security.dialog_enable_delay to 0

Set network.prefetch-next to False (Only on slow internet connections)

Set browser.newtabpage.activity-stream.feeds.telemetry to false

Set browser.newtabpage.activity-stream.telemetry to false

Set browser.ping-centre.telemetry to false

Set toolkit.telemetry.archive.enabled to false

Set toolkit.telemetry.bhrPing.enabled to false

Set toolkit.telemetry.enabled to false

Set toolkit.telemetry.firstShutdownPing.enabled to false

Set toolkit.telemetry.hybridContent.enabled to false

Set toolkit.telemetry.newProfilePing.enabled to false

Set toolkit.telemetry.reportingpolicy.firstRun to false

Set toolkit.telemetry.shutdownPingSender.enabled to false

Set toolkit.telemetry.unified to false

Set toolkit.telemetry.updatePing.enabled to false



In about:config, set reader.parse-on-load.enabled to False

In about:config, set reader.parse-on-load.force-enabled to False

In about:config, set browser.pocket.enabled to False

In about:config, set loop.enabled to False



Scroll down to the first entry labeled "gfx.font," or instead type "gfx.font" in the "Filter" text box at the top of the screen to automatically scroll to the proper section. Locate the "gfx.font_rendering.directwrite.enabled" entry and double-click it to change the value from "False" to "True."

3. Right-click the the entry and click "New." Select the "Integer" option. Type the phrase "mozilla.widget.render-mode" in the "Name" text box and click "OK." Type "6" in the "Value" text box and click "OK."



Set browser.cache.disk.enable to false

Set browser.cache.memory.enable to true

Set browser.cache.memory.capacity to 65536

Set browser.sessionstore.interval to 15000000

Set gfx.font_rendering.cleartype_params.rendering_mode to 5



Create New > Integer > content.notify.interval to 500000

Create New > Boolean > content.notify.ontimer to true

Create New > Integer > content.switch.threshold to 250000

Create New > Boolean > content.interrupt.parsing to false

Create New > Boolean > javascript.options.jit.chrome to true

Create New > Boolean > javascript.options.jit.content to true



dom.gamepad.extensions.enabled to false

extensions.formautofill.addresses.enabled to false

extensions.formautofill.available

extensions.formautofill.creditCards.available to false

extensions.formautofill.creditCards.enabled to false

extensions.formautofill.firstTimeUse to false

extensions.formautofill.heuristics.enabled to false

extensions.formautofill.section.enabled to false

extensions.pocket.api

extensions.pocket.enabled to false

extensions.pocket.site

extensions.screenshots.disabled to true

extensions.webcompat-reporter.enabled to false

media.navigator.enabled to false

media.peerconnection.enabled to false

network.http.max-persistent-connections-per-server to 12

geo.enabled to false

geo.wifi.uri

geo.wifi.xhr.timeout to 1

network.dns.disablePrefetch to true

network.prefetch-next to false

dom.webnotifications.enabled to false

dom.push.enabled to false

browser.cache.disk.enable to false

browser.cache.offline.capacity to 0

browser.cache.offline.enable to false

browser.cache.disk_cache_ssl to false

browser.cache.memory.enable to true

network.trr.mode to 2

network.trr.uri to https://mozilla.cloudflare-dns.com/dns-query

network.security.esni.enabled to true

browser.tabs.allowTabDetach value to false

Create New > Boolean > dom.image-lazy-loading.enabled to true

layout.css.dpi to 0



Create New > Boolean > dom.w3c.touch_events.enable to true

general.useragent.site_specific_override to false

Create New > String > general.useragent.overrid to

Mozilla/5.0 (X11; Linux; Nexus 7) AppleWebKit/537.36 (KHTML, like Gecko) Chromium/65.0.3325.181 Safari/537.36



Verify Integrity của Places Database trong about:support



Fix firefox-esr ở 120 DPI chỉnh about:config dòng layout.css.devPixelsPerPx thành 1.25



Trong firefox-esr, mở touch gestures cho firefox-esr bằng cách thêm MOZ_USE_XINPUT2 DEFAULT=1 vào /etc/security/pam_env.conf, vào about:config sửa dom.w3c.touch_events.enabled thành 1. Xem youtube thì cài addons h264ify, nên để ở quality 360p-480p không bị giật và laggy hình.



browser.snapshots.limit to 5

browser.gesture.pinch.in to cmd_fullZoomReduce

browser.gesture.pinch.out to cmd_fullZoomEnlarge

browser.gesture.pinch.latched to false

browser.gesture.pinch.threshold to 35



firefox mojave theme:

https://github.com/vinceliuice/Mojave-gtk-theme/tree/master/src/other/firefox



Move chrome cache và firefox cache đến ramdisk tho link bên dưới:

https://www.omgubuntu.co.uk/2010/11/move-google-chrome-cache-to-ramdisk



https://askubuntu.com/questions/99506/what-can-i-move-to-ram-drive-to-have-the-system-working-faste



Căn cho các apps chạy QT đúng tỷ lệ màn hình bằng cách thêm

QT_SCALE_FACTOR=2

QT_AUTO_SCREEN_SCALE_FACTOR=2

Vào /etc/environment



Tạo shortcut xoay màn hình thủ công dùng xrandr, xinput, calibration



$ sudo apt-get install xrandr xinput calibration



Tạo desktop entries



$ nano ~/rotate.desktop



[Desktop Entry]

Type=Application

Terminal=false

Icon=btsync-user

Name=Rotate Screen

Exec=/home/<username>/rotate-screen

Name[en_US]=Rotate Screen



Tạo file script rotate-screen



$ nano ~/rotate-screen



#!/bin/bash

TouchscreenDevice='elan-touchscreen'



if [ "$1" = "--help"  ] || [ "$1" = "-h"  ] ; then

echo 'Usage: rotate-screen.sh [OPTION]'

echo

echo 'This script rotates the screen and touchscreen input 90 degrees each time it is called,'

echo 'also disables the touchpad, and enables the virtual keyboard accordingly'

echo

echo Usage:

echo ' -h --help display this help'

echo ' -j (just horizontal) rotates the screen and touchscreen input only 180 degrees'

echo ' -n always rotates the screen back to normal'

exit 0

fi



screenMatrix=$(xinput --list-props "$TouchscreenDevice" | awk '/Coordinate Transformation Matrix/{print $5$6$7$8$9$10$11$12$NF}')



# Matrix for rotation

# ⎡ 1 0 0 ⎤

# ⎜ 0 1 0 ⎥

# ⎣ 0 0 1 ⎦

right='1 0 0 0 1 0 0 0 1'

right_float='1.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,1.000000'



#⎡ -1  0 1 ⎤

#⎜  0 -1 1 ⎥

#⎣  0  0 1 ⎦

left='-1 0 1 0 -1 1 0 0 1'

left_float='-1.000000,0.000000,1.000000,0.000000,-1.000000,1.000000,0.000000,0.000000,1.000000'



# 90° to the left

# ⎡ 0 -1 1 ⎤

# ⎜ 1  0 0 ⎥

# ⎣ 0  0 1 ⎦

normal='0 -1 1 1 0 0 0 0 1'

normal_float='0.000000,-1.000000,1.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000'



# 90° to the right

#⎡  0 1 0 ⎤

#⎜ -1 0 1 ⎥

#⎣  0 0 1 ⎦

inverted='0 1 0 -1 0 1 0 0 1'

inverted_float='0.000000,1.000000,0.000000,-1.000000,0.000000,1.000000,0.000000,0.000000,1.000000'



if [ $screenMatrix == $normal_float ] && [ "$1" != "-n" ]

then

  echo "90° to the left"

  xrandr --output LVDS-1 --rotate left

  xinput set-prop "$TouchscreenDevice" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1

  # Remove hashtag below if you want pop-up the virtual keyboard

  #onboard &

elif [ $screenMatrix == $inverted_float ] && [ "$1" != "-j" ] && [ "$1" != "-n" ]

then

  echo "Upside down"

  xrandr --output LVDS-1 --rotate right

  xinput set-prop "$TouchscreenDevice" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1

  #killall onboard

elif [ $screenMatrix == $left_float ] && [ "$1" != "-j" ] && [ "$1" != "-n" ]

then

  echo "90° to the right"

  xrandr --output LVDS-1 --rotate inverted

  xinput set-prop "$TouchscreenDevice" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1

  #killall onboard

else

  echo "Back to normal"

  xrandr --output LVDS-1 --rotate normal

  xinput set-prop "$TouchscreenDevice" --type=float "Coordinate Transformation Matrix" 0 -1 1 1 0 0 0 0 1

  #killall onboard

fi



$ sudo chmod +x ~/rotate-screen



$ sudo bash ~/rotate-screen



Tạo file update_script.sh hoặc gõ từng lệnh dùng quyền sudo su trong terminal



$ nano ~/update_script.sh



#!/bin/bash



chmod -R a+rwX,o-w /home/[username]



chown -R [username]:[username] /home/[username]



usermod -aG sudo [username]



apt-get install systemd-shim



echo "session required pam_systemd.so" >> /etc/pam.d/lxdm



chmod o+x /usr/lib/dbus-1.0/dbus-daemon-launch-helper



apt-get install --reinstall dbus



chown -R man:root /var/cache/man



chmod 755 /var



chmod 755 /var/cache



$ sudo chmod +x ~/update_script.sh



$ sudo bash ~/update_script.sh



Fix con trỏ xoay ngược ở màn hình login

Chỉnh cursor xoay đúng với màn hình login:



Ví dụ: có cursor theme là thư mục ~/capitaine-cursors



$ sudo cp ~/capitaine-cursors  /usr/share/icons



$ sudo mkdir /usr/share/icons/default



$ sudo nano /usr/share/icons/default/index.theme

https://github.com/Sepero/temp-throttle/tree/4e6fa06ea036129c4a815fc5d4494556578624e1

TEMPERATURE_PATH="/sys/kernel/debug/tegra_thermal/temp_tj

Low_temp=max_temp -3

$ sh temp_throttle.sh 50

[Icon Theme]

Name=Default

Comment=Default Cursor Theme

Inherits=capitaine-cursors

Ubuntu default governor:
conservative governor:

down_threshold=20
freq_step=5
ignore_nice_load=0
sampling_down_factor=1
sampling_rate=300000
sampling_rate_min=200000
up_threshold=80

ondemand governor:

ignore_nice_load=0
io_is_busy=0
powersave_bias=0
sampling_down_factor=1
sampling_rate=300000
sampling_rate_min=30000
up_threshold=95

interactive governor:

above_hispeed_delay=20000
boost=0
boost_factor=0
go_hispeed_load=85
go_maxspeed_load=85
hispeed_freq=1300000
input_boost=0
io_is_busy=0
max_boost=0
min_sample_time=30000
sustain_load=0
timer_rate=20000

[MEDIA=youtube]ujEjDxSvfsk[/MEDIA]



Archlinux on Nexus7



[MEDIA=youtube]A1wwCu84LhE[/MEDIA]
