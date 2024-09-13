void main() {
  String namaLengkap = "Astrid Risa Widiana";  
  String NIM = "2241720250";  

  // Fungsi untuk mengecek apakah suatu angka merupakan bilangan prima
  bool isPrime(int number) {
    if (number < 2) return false; // 0 dan 1 bukan bilangan prima
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  // Menampilkan bilangan prima dari 0 hingga 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i adalah bilangan prima.');
      print('Nama: $namaLengkap, NIM: $NIM');
    }
  }
}
