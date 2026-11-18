 // Student: Hiba Omer Ahmed Zayed
// Reg no: 25996

const String regNo = '25996';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  print('Reg no: $regNo | D = $d | T = $t');
  
  print('--- Part A1 ---');
  int a = 17;
  int b = 5;
  print(a / b);
  print(a ~/ b);
  print(a % b);
  print(-a % b);
  print(-a ~/ b);
  print(-17.abs());
  print(0.1 + 0.2 == 0.3);
  print(10 == 10.0);

  print('--- Part A2 ---');
  int x = d;
  int y = t;
  var z = x * 2 + y ~/ 4;
  z += x;
  print(z);
  print(z.isEven);
  print('$z' + '$x');

  print('--- Part B1 ---');
  String city = 'Kigali';
  print(city.length);
  print(city[city.length - 1]);
  print(city.substring(2, 4));
  print(city.toUpperCase().indexOf('A'));
  print(city.contains('k'));
  print('$city.length');
  print('${city.length}');
  print(city * 2); 
  city.toUpperCase();
  print(city);
  print(city.replaceAll('i', '!'));
  print('5' + 5.toString());
  print(int.parse('5') + 5);

  print('--- Part B2 ---');
  print('Hiba Omer Ahmed Zayed has ${countVowels('Hiba Omer Ahmed Zayed')} vowels');

  print('--- Part B3 ---');
  print(initials('Hiba Omer Ahmed Zayed'));
  print(initials('ana uwase'));
  print(initials(''));
}

int countVowels(String text) {
  int count = 0;
  String vowels = 'aeiouAEIOU';
  for (int i = 0; i < text.length; i++) {
    if (vowels.contains(text[i])) {
      count++;
    }
  }
  return count;
}

String initials(String fullName) {
  String result = '';
  List<String> words = fullName.trim().split(RegExp(r'\s+'));
  for (String word in words) {
    if (word.isNotEmpty) {
      result += word[0].toUpperCase() + '.';
    }
  }
  return result;
}
