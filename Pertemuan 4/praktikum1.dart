void main() {
//   var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);

// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);

final List<String?> list = List<String?>.filled(5, null); // Membuat list dengan panjang 5, default nilainya null

  list[1] = "Astrid Risa Widiana";  // Mengisi elemen index ke-1 dengan nama
  list[2] = "2241720250";   // Mengisi elemen index ke-2 dengan NIM

  print(list.length);  // Mencetak panjang list, seharusnya 5
  print(list[1]);      // Mencetak nama di index ke-1
  print(list[2]);      // Mencetak NIM di index ke-2
  print(list);        //Mencetak seluruh isi list
}