void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  
  var test = (1,2);
  var ditukar = tukar(test);
  print(ditukar);

  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  var mahasiswa = ('Astrid Risa Widiana', 2241720250);
  print(mahasiswa);  
  
  var mahasiswa2 = ('Astrid Risa Widiana', a: 2241720250, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
  
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}