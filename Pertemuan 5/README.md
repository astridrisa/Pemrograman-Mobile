# **PERTEMUAN 5 - Aplikasi Pertama dan Widget Dasar Flutter**

## **Praktikum 1: Membuat Project Flutter Baru**

### **Langkah 1:**

Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

![alt text](image.png)

### **Langkah 2:**

Selanjutnya pilih Application

![alt text](img/image1.png)

### **Langkah 3:**

Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

### **Langkah 4:**

Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

![alt text](img/image2.png)

### **Langkah 5:**

Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.

![alt text](img/image3.png)


## **Praktikum 2: Menghubungkan Perangkat Android atau Emulator**

Menjalankan aplikasi di perangkat Android menggunakan Kabel USB


### **Langkah 1**

Sambungkan kabel USB pada perangkat ke laptop. Lalu, buka Developer options, scroll ke bawah ke bagian Debugging, lalu aktifkan USB debugging.

![alt text](img/image11.jpg)

Pada pop-up Izinkan proses debug nirkabel di jaringan ini?, pilih Allow.


### **Langkah 3**
Lalu Run main.dart pada windows dan tunggu prosesnya selesai

Pada Handphone akan tampil programnya

![alt text](img/image12.jpg)



## **Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum**

### **Langkah 11:**

Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

![alt text](img/01.png)

### **Langkah 12:**

Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.

![alt text](img/image4.png)

## **Praktikum 4: Menerapkan Widget Dasar**

### **Langkah 1: Text Widget**

Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.

![alt text](img/image5.png)

Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

![alt text](img/image6.png)

### **Langkah 2: Image Widget**

Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

![alt text](img/image7.png)

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

```dart
flutter:
  assets:
     - logo_polinema.jpg
```

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

![alt text](img/image8.png)

## **Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino**

### **Langkah 1: Cupertino Button dan Loading Bar**

Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

![alt text](img/image13.png)

### **Langkah 2: Floating Action Button (FAB)**

Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

![alt text](img/image14.png)

### **Langkah 3: Scaffold Widget**

Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.

![alt text](img/image15.png)

### **Langkah 4: Dialog Widget**

Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.

![alt text](img/image16.png)

### **Langkah 5: Input dan Selection Widget**

Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:

![alt text](img/image17.png)

### **Langkah 6: Date and Time Pickers**

Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

![alt text](img/image18.png) 

![alt text](img/image19.png)