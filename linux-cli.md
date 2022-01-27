---
theme: gaia
class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.jpg')
title: "Linux Command Line Interface"
marp: true
---

![DragonForce Malaysia](https://i.imgur.com/tL95KMG.png)

# Recap Previous Session

---

# Linux Filesystem Hierachy Standards
## (Linux FHS)

---

## root

Dalam Linux, ada 3 jenis `root`.

- System root directory ( `/` )
- User `root`
- User root directories ( `/root` )

---

## System root directory ( `/` )

- / adalah direktori paling atas yang menempatkan semua files dan folders di dalamnya.
- Kalau ambil Windows sebagai perbandingan, / boleh diumpamakan sebagai C:
- Di bawah /, terdapat pelbagai folder lain yang mempunyai fungsi-fungsi tersendiri.

---

## Linux FHS

- Rujuk link: https://i.imgur.com/fMsGSqC.png
- Boleh juga tengok hierachy dengan menggunakan command `tree -d -L 2`

---

## Semuanya adalah files!

- Ya, dalam Linux, semuanya adalah files.
- Folder? File!
- Socket? File!
- Tapi ada special bits yang kernel guna untuk bezakan jenis-jenis file.
- Dan jangan lupa, nama file adalah case-sensitive.
  - Contohnya, file bernama "Kucing.txt" dan "kucing.txt" adalah 2 file yang berbeza.

---

## Bits untuk jenis-jenis file

|   Jenis       |   Bits    |   Penerangan  |
|   :-:           |   :-:     |   :-:         |
| Normal   |  - | Normal file |
| Directory |    d   |   Direktori |
| Hard link | - |    Hard link. Untuk periksa, boleh gunakan `find $DIR -samefile $FILE` |
| Symbolic link | l | Lebih kurang macam shortcut dekat Windows |

Ada beberapa jenis file lagi, tapi agak advanced.

---

# Command Line Interface
## Antaramuka menggunakan Baris Arahan

---

Dalam Linux, kita ada 2 pilihan antaramuka atau interface, iaitu Graphical dan Text / Command-Line.

Disinilah kelebihan Linux. Dalam sistem operasi lain, penggunaan CLI adalah sangat minimal dan hampir mustahil untuk "hidup" di dalam terminal semata-mata.

Tetapi tidak didalam Linux. Anda boleh mengemudi machine Linux anda tanpa sebarang graphical interface. Hebat, kan? :)

---

# Tapi, kenapa nak guna CLI?

---

## Antara sebab utama kebanyakan pengguna Linux menggunakan CLI adalah:
- Hampir kesemua perkara BOLEH dilakukan melalui CLI
- Apabila terdapat tasks berulang, kita jadikan ia script!
- Dan jika anda perlu mengakses remote machine, CLI tidak memerlukan resources yang tinggi berbanding GUI
- Serta, dengan beratus-ratus Linux distro yang ada kat muka bumi ni, apa perkara yang sama antara semua distro tersebut? Ya, command-line interface!

---

# Basic Command

---

## CLI: File Management

---

- cd
  - Change Directory
  - Kegunaan: Navigate dari satu direktori ke direktori yang lain
  - Contoh: `cd /home/kucing/Documents`

- ls
  - LiSt
  - Kegunaan:  menyenaraikan kesemua files/folders di dalam direktori
  - Contoh: `ls /home/kucing/Documents`

---

- cp
  - CoPy
  - Kegunaan: Menyalin (copy) sesebuah files atau folders ke destinasi yang kita mahu
  - Contoh: `cp /home/kucing/Documents/Final.jpg /home/kucing/archives/`

- mv
  - MoVe
  - Kegunaan: Memindahkan sesebuah files atau folders ke destinasi yang kita mahu, samada dengan mengekalkan nama yang sama atau diubah
  - Contoh: `mv ~/Documents/Final.jpg ~/archives/Final_01.jpg`

---

- rm
  - ReMove
  - Kegunaan: Memadam files atau folders
  - Contoh: `rm ~/archives/Final_01.jpg`

---

- cat
  - conCATenate
  - Kegunaan: Memaparkan 1 atau lebih file ke skrin (standard output)
  - Contoh: `rm ~/archives/nota-lecture.txt`

- grep
  - Global Regular Expression Print
  - Kegunaan: Memaparkan baris dari teks yang match dengan regular expression yang kita beri
  - Contoh: `grep kernel /var/log/syslog`

---

- head
  - Kegunaan: Memaparkan 10 baris (by default) terawal dari file(s)
  - Contoh: `head ~/archives/nota-lecture.txt ~/archives/quiz.txt`

- tail
  - Kegunaan: Memaparkan 10 baris (by default) terakhir dari file(s)
  - Contoh: `tail ~/archives/nota-lecture.txt ~/archives/quiz.txt`

---

- touch
  - Kegunaan: Mengubah timestamp sesuatu file atau folder, dan jika file atau folder tersebut tidak wujud, sebuah file akan dicipta
  - Contoh: `touch ~/Documents/latih-tubi.txt`

- mkdir
  - MaKe DIRectory
  - Kegunaan: Mencipta sebuah folder atau direktori
  - Contoh: `mkdir ~/resipi`

---

- df
  - Disks Free
  - Kegunaan: Untuk memeriksa size storage. Total, usage dan free size
  - Contoh: `df -h`

- du
  - Disk Usage
  - Kegunaan: Untuk memeriksa size sesuatu files atau folders
  - Contoh: `du -sh ~/Documents/*`

---

- find
  - Kegunaan: Untuk mencari files atau folders di dalam direktori tertentu
  - Contoh: `find ~/Documents/ -iname final.jpg`

- locate
  - Kegunaan: Untuk mencari files atau folders menggunakan senarai yang telah di-index oleh `updatedb`. Carian akan dibuat ke seluruh filesystem.
  - Contoh: `locate final.jpg`

---

## Absolute Path VS Relative Path

---

- Perasan tak, dalam contoh-contoh yang saya kasi tadi, ada sedikit beza dalam path.
- Ada yang saya tulis begini: `/home/kucing/Documents`, dan ada pula yang saya tulis begini: `~/Documents`
- Perbezaan ini ada `absolute path` dan `relative path`.
- `Absolute path` adalah path penuh sesebuah direktori
- Manakala `Relative path` adalah path pendek atau shortcut

---

## Root User

---

- Di dalam sistem operasi Linux, terdapat satu user yang power gila, iaitu `root` user.
- `root` boleh buat apa saja di dalam sistem.
- Nak create atau delete user? Boleh
- Nak baca files user lain? Boleh
- Nak delete keseluruhan sistem? Pun boleh!
- Jadi, user ini tidak seharusnya digunakan secara default!
- Sekiranya anda memerlukan root access, anda boleh gunakan command `sudo`.

---

## CLI: Sudo

---

- `Sudo` atau `Super User DO`, adalah sebuah command yang membolehkan `non-root` user mempunyai akses seperti `root`.
- Secara default, apabila kita mencipta user baru, ianya hanyalah normal user.
- Tetapi, kita boleh memberikan `root access` kepada user tersebut dengan menggunakan `sudo`.
- Ada beberapa cara untuk memberikan `sudo` akses, dan ianya bergantung kepada distro.
  - `wheel` atau `sudo` group
  - atau masukkan terus user tersebut ke dalam `sudoers` list
- Contoh penggunaan: `sudo apt update`

---

## CLI: Performance Monitor

---

- top
  - Table Of Processes
  - Kegunaan: Memaparkan kesemua proses yang tengah running secara realtime
  - Contoh: `top`

- free
  - Kegunaan: Memaparkan size memory. Total, usage, available/free
  - Contoh: `free`

---

- ps
  - ProceSses
  - Kegunaan: Memaparkan kesemua proses yang tengah running
  - Contoh: `ps aux`

- time
  - Kegunaan: Memantau berapa lama tempoh yang diambil oleh sesuatu proses
  - Contoh: `time ls -l`
  
---

## CLI: Network Management

---

- ifconfig
  - InterFace Configuration
  - Kegunaan: Memanipulasi network interface
  - Contoh: `sudo ifconfig eth0 10.0.0.50 netmask 255.255.255.0 broadcast 10.0.0.254`

- ip (mungkin menggantikan ifconfig)
  - Kegunaan: Memanipulasi network interface
  - Contoh: `sudo ip addr add 10.0.0.50/24 dev eth0`

---

## CLI: Package Management

---

- Redhat-based
  - Gunakan `dnf` atau `yum`
  - Installer binary berakhir dengan `.rpm`
  - Contoh: `sudo dnf install htop`

- Debian-based
  - Gunakan `apt` atau `apt-get`
  - Installer binary berakhir dengan `.deb`
  - Contoh: `sudo apt install htop`

---

- Arch-based
  - Gunakan `pacman`
  - Tiada binary installer
  - Contoh: `sudo pacman -S htop`
  <br />
  - Boleh juga guna Arch User Repository dengan AUR helper
  - Contoh: `sudo paru -S htop`

---

## CLI: Shutdown & Reboot

---

- poweroff
  - Kegunaan: Command ringkas untuk power off machine
  - Contoh: `poweroff`

- reboot
  - Kegunaan: Command ringkas untuk reboot machine
  - Contoh: `reboot`

- shutdown
  - Kegunaan: Low-level command untuk power off atau reboot
  - Contoh: `sudo shutdown -r +5` akan reboot selepas 5 minit