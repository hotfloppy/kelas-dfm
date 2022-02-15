# Pengenalan kepada Linux

## Apa itu Unix?

Apabila bercerita mengenai Linux, kita perlulah terlebih dahulu memahami sejarah sebelum terciptanya Linux.

Semuanya bermula pada tahun 1969, apabila jurutera-jurutera dari AT&T Bell Labs, Dennis Ritchie dan Ken Thompson mencipta sebuah sistem operasi yang hebat iaitu Unics (Uniplexed Information and Computing Service). Nama tersebut kemudiannya ditukar kepada Unix oleh seorang lagi jurutera yang turut terlibat dalam pembangunan Unix iaitu Brian Kernighan.

Pada 1975, Ken Thompson, yang dijemput sebagai pensyarah jemputan di Universiti California telah memasang Unix v6 di sana dan pada 1977, menggunakan kod sumber Unix, Universiti California mencipta varian Unix mereka sendiri iaitu Berkeley Software Distribution atau lebih dikenali sebagai BSD. Malangnya, disebabkan Unix adalah hak milik penuh AT&T, Universiti California telah disaman oleh AT&T. Dan insiden saman ini merencatkan pembangunan Unix pada masa tersebut.

## GNU is Not Unix

Beberapa tahun kemudian, iaitu pada 1983, seorang jejaka tampan bernama Richard Stallman memulakan sebuah projek dengan visi untuk mewujudkan sebuah sistem operasi berasaskan Unix yang bebas, iaitu GNU Project.

Apa yang Stallman buat adalah menulis semula program-program di dalam Unix tanpa sebarang kod dari program asal, jadi tiada risiko saman dari pihak AT&T.

Semuanya berjalan lancar, tetapi disebabkan hampir keseluruhan pembangunan ditumpukan kepada menulis semula program-program di dalam Unix, merekan terlepas pandang akan satu perkara yang sangat penting, iaitu kernel.

## Kernel?

Kernel adalah komponen penting dalam sesebuah sistem operasi yang menghubungkan segala program atau aplikasi yang kita gunakan dengan perkakasan. Tanpa kernel, program sehebat mana pun tidak dapat berfungsi.

<div style="page-break-after: always;"></div>

## Sistem Operasi FreaX

Kembali kepada Linux.

1991, seorang pelajar dari Universiti Helsinki, iaitu Linus Torvalds, yang sangat-sangat berminat dengan programming mencipta sebuah "pet project" yang akhirnya berkembangan menjadi sebuah "empire".

Sedikit mengenai Linus, beliau mula menulis kod BASIC seawal berusia 10 tahun menggunakan Commodore Vic 20. Sejak dari itu, Linus mula menulis pelbagai aplikasi dan video game untuk kegunaan sendiri kerana pada zaman itu, agak sukar untuk mendapatkan aplikasi atau video game di Finland.

Ketika di universiti, 1990-an, Linus menggunakan sistem operasi MS-DOS serta MINIX tetapi disebabkan ianya adalah sistem operasi percuma, terdapat banyak kekangan dari segi fungsi dan "usability".

Sistem operasi yang agak lengkap dan terkenal pada masa itu adalah UNIX, tetapi ianya terlalu mahal dan Linus tidak mampu untuk mendapatkannya. Jadi beliau membuat keputusan untuk menulis sendiri sistem operasinya sendiri menggunakan MINIX sebagai "acuan".

Dan pada September 1991, Linus mengumumkan sistem operasinya versi 0.0.1. Ketika ini, ianya adalah sebuah sistem operasi ringkas (sekadar kernel sebenarnya) dan bukanlah sumber terbuka seperti sekarang.

```
linux-0.01.tar.Z	- sources to the kernel
bash.Z			    - compressed bash binary if you want to test it
update.Z		    - compressed update binary
RELNOTES-0.01		- this file

... snip snip ...

		2. Copyrights etc


This kernel is (C) 1991 Linus Torvalds, but all or part of it may be
redistributed provided you do the following:

	- Full source must be available (and free), if not with the
	  distribution then at least on asking for it.

	- Copyright notices must be intact. (In fact, if you distribute
	  only parts of it you may have to add copyrights, as there aren't
	  (C)'s in all files.) Small partial excerpts may be copied
	  without bothering with copyrights.

	- You may not distibute this for a fee, not even "handling"
	  costs.

Mail me at "torvalds@kruuna.helsinki.fi" if you have any questions.
```

<div style="page-break-after: always;"></div>

```
Hello everybody out there using minix -

I'm doing a (free) operating system (just a hobby, won't be big and professional like gnu) for 386(486) AT clones. This has been brewing since april, and is starting to get ready. I'd like any feedback on things people like/dislike in minix, as my OS resembles it somewhat (same physical layout of the file-system (due to practical reasons) among other things).

I've currently ported bash(1.08) and gcc(1.40), and things seem to work. This implies that I'll get something practical within a few months, and I'd like to know what features most people would want. Any suggestions are welcome, but I won't promise I'll implement them :-)

Linus (torvalds@kruuna.helsinki.fi)

PS. Yes - it's free of any minix code, and it has a multi-threaded fs. It is NOT portable (uses 386 task switching etc), and it probably never will support anything other than AT-harddisks, as that's all I have :-(.
```

Email pertama Linus kepada komuniti MINIX

Nama asal yang Linus ingin gunakan bagi sistem operasi ini adalah FreaX iaitu singkatan kepada Free & Freak UNIX kerana menurut beliau, nama Linux adalah terlalu egoistik. Akan tetapi, rakannya iaitu Ari Lenke (ada yang kata Lenmarke) mengubah nama direktori yang Linus gunakan di `ftp.funet.fi` kepada `pub/os/linux` dan nama Linux kekal digunakan sehingga sekarang.

## GNU/Linux

Pada 1992, dengan menggunakan General Public License, Linus mengeluarkan versi sumber terbuka bagi Linux yang diberikan bersama dengan program-program dari GNU Project iaitu GNU Toolschain.

Maka lengkaplah sebuah sistem operasi yang dapat digunakan, percuma dan bebas untuk semua orang.

## Perkakasan Yang Sesuai untuk Linux

Ketika zaman UNIX, MS-DOS, sistem operasi tersebut hanyalah digunakan pada perkakasan serta peranti tertentu. Ini disebabkan sokongan terhadap perkakasan memerlukan kod yang spesifik dan dengan kumpulan engineer yang agak limit untuk projek-projek tersebut, tidak banyak R&D dapat dijalankan untuk menyokong pelbagai perkakasan.

Semua ini berubah dengan kedatangan Linux yang menggunakan ideologi sumber terbuka, pembangunannya menjadi sangat pesat dengan gabungan idea serta kepakaran ratusan malah ribuan engineer serta programmer dari seluruh dunia. Ini membolehkan sokongan terhadap pelbagai perkakasan dicapai dengan cepat.

Linux mula digunakan di pelbagai platform. Komputer, telefon pintar, TV pintar, peti sejuk, malahan kereta juga.

<div style="page-break-after: always;"></div>

## Linux Distribution

Memandangkan sistem operasi Linux adalah sebuah kernel yang digabungkan dengan GNU toolschan, ianya sekadar mampu memberikan antaramuka berasaskan teks (atau command line interface / CLI). Dengan kepesatan teknologi serta sistem operasi lain yang telah menggunapakai antaramuka berasaskan grafik (atau graphical user interface / GUI), Linux juga tidak boleh ketinggalan.

Akan tetapi, Linus hanyalah menumpukan fokusnya kepada pembangunan kernel dan tidak berminat dengan pembangunan GUI. Disinilah bermula penglibatan komuniti lain yang mula mencipta GUI kepada Linux dan mengedarkan versi Linux mereka sendiri. Versi Linux ini digelar Linux distribution atau singkatannya, distro.

Antara distro terawal dan masih wujud sehingga sekarang adalah Slackware. Versi terbaru yang dikeluarkan pada 2022 adalah Slackware 15. Kebanyakan distro-distro terawal lain telah lama terkubur.

Dan antara komponen yang membezakan setiap distro, diantaranya adalah package manager, desktop environment, aplikasi dan sebagainya.

## Desktop Environment

Desktop envinronment adalah gabungan beberapa komponen yang memberikan "rupa" kepada GUI. Antaranya adalah ikon, wallpaper, widget, aplikasi tertentu serta kebolehan untuk menggunakan mouse. Tanpa GUI, semua perkara perlu dilakukan di menggunakan CLI.

Antara desktop environment yang agak popular adalah GNOME, KDE, LXDE, LXQT, Xfce, Cinnamon, MATE dan sebagainya.

## Package Manager

Manakala package manager pula adalah sebuah program yang membolehkan kita menambah aplikasi atau perisian ke dalam sistem operasi kita dengan mudah. Contohnya, untuk memasang aplikasi tanpa package manager, kita perlu "compile" sendiri aplikasi tersebut menggunakan kod sumber yang disediakan oleh pembangunnya.

Pemasangan guna Kod Sumber
1. Pastikan setiap "dependencies" telah dipasang
2. Jalankan configuration setup
3. Jalankan proses compilation
4. Jalan proses pemasangan

Pemasangan guna package manager APT
1. apt install aplikasi

<div style="page-break-after: always;"></div>

Rujukan: <br />
- Release note versi 0.0.1 <br />
https://mirrors.edge.kernel.org/pub/linux/kernel/Historic/old-versions/RELNOTES-0.01
- Pelbagai kegunaan Linux <br />
https://www.unixmen.com/15-weirdsurprising-devices-amp-systems-that-run-on-linux/