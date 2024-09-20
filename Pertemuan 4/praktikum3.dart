void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'name': 'Astrid Risa Widiana', 
  'NIM': '2241720250',   
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  1: 'Astrid Risa Widiana', 
  0: '2241720250', 
};

print(gifts);
print(nobleGases);

var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['name'] = 'Astrid Risa Widiana';
  mhs1['NIM'] = '2241720250';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[1] = 'Astrid Risa Widiana';
  mhs2[0] = '2241720250';

  print(gifts);
  print(nobleGases);    
}