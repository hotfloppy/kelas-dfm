---
theme: gaia
class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.jpg')
title: "Pengenalan kepada Linux"
marp: true
---

![DragonForce Malaysia](https://i.imgur.com/tL95KMG.png)

# Pengenalan kepada Linux

---

# Apa itu Linux
## Kereta 4x4 tu ke?

---

## Bukan! Itu Hilux!

---

# Sistem Operasi Freax

---

- Linus Torvalds, Helsinki, Finland
- Susah dapat software kat Helsinki, so Linus buat software sendiri, games etc.
- **1990**, dia beli PC baru dan start guna **Minix (Minimal UNIX)** tapi disebabkan kekangan licensing, dia start buat OS dia sendiri.
- **April 1991**, Linus start buat Linux kernel.

---

```Hello everybody out there using minix -```

```I'm doing a (free) operating system (just a hobby, won't be big and professional like gnu) for 386(486) AT clones. This has been brewing since april, and is starting to get ready. I'd like any feedback on things people like/dislike in minix, as my OS resembles it somewhat (same physical layout of the file-system (due to practical reasons) among other things).```

---

```I've currently ported bash(1.08) and gcc(1.40), and things seem to work. This implies that I'll get something practical within a few months, and I'd like to know what features most people would want. Any suggestions are welcome, but I won't promise I'll implement them :-)```

```Linus (torvalds@kruuna.helsinki.fi)```

```PS. Yes - it's free of any minix code, and it has a multi-threaded fs. It is NOT portable (uses 386 task switching etc), and it probably never will support anything other than AT-harddisks, as that's all I have :-(.```

```— Linus Torvalds```

---

- **September 1991**, bersama dengan GNU application, lahirlah `Linux v0.0.1`.
- **October 1991**, Linus release `Linux v0.0.2` kepada public berserta dengan source code dan bermula dari situ, ramai penggiat sumber terbuka mula join Linus untuk bangunkan Linux sampai sekarang.
- Linus asalnya nak guna nama `Freax` (Free/Freak UNIX), tapi kawan dia, **Ari Lenke**, kata nama tu huduh dan tukar kepada Linux, mengambil nama working directory yang Linus gunakan di `ftp.funet.fi` iaitu `/pub/os/linux`.

Kalau berminat nak tengok source code Linux, boleh tengok kat
https://github.com/torvalds/linux

---

# Fakta:
## Linux ni untuk PC atau laptop sahaja.
### Betul?

---

## Wrong! Salah! Nehi!

---

- Linux kernel digunakan secara meluas di pelbagai medium.
- PC, laptop
- Smartphone
- Smart appliance
  - Fridge, Smart TV, PS4 (dan PS5 juga mungkin)
- Banyak lagi.. antaranya boleh tengok kat sini:
  - https://www.unixmen.com/15-weirdsurprising-devices-amp-systems-that-run-on-linux/

---

# Distro? Kelab malam ke?

---

## Apa itu Linux distro?

---

Linux distro (atau distribution) adalah sebuah gabungan komponen bagi memudahkan kita untuk menggunakan Linux.
- Antara komponen asas adalah Linux kernel itu sendiri, tools dari GNU (https://en.wikipedia.org/wiki/GNU_toolchain), aplikasi-aplikasi lain yang pembangun distro rasakan perlu serta package manager.
- Dan kebiasaannya, Linux distro turut datang dengan antaramuka pengguna berasaskan grafik (GUI). Contohnya Ubuntu.
- Tapi ada juga yang tiada GUI seperti Arch Linux.

---

## Distro Popular

---

- RedHat Enterprise Linux (RHEL)
  - Fedora (ditaja oleh RedHat)
  - CentOS (free alternative kepada RHEL, dibangunkan oleh komuniti)
  - RockyLinux (dikatakan pengganti kepada CentOS)

---

- Debian
  - Ubuntu (walaupun based dari Debian, tapi ia sangat popular!)
  - Linux Mint (based on Ubuntu & Debian)
  - Kali Linux
  - PopOS (memfokuskan gaming)

---

- Arch Linux
  - Manjaro (my favorite)
  - Artix (tanpa SystemD)
  - ArcoLinux
  - EndeavourOS

---

Boleh tengok kat sini untuk senarai distro yang ada:

https://upload.wikimedia.org/wikipedia/commons/b/b5/Linux_Distribution_Timeline_21_10_2021.svg

Banyak gila kan? :D

---

## Terminal vs Shell

---

- Terminal atau terminal emulator, medium yang kita guna untuk taip command
- Shell pula adalah intepreter kepada command tadi

