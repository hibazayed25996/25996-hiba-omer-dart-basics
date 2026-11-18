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
   print('--- Part C1 ---');
  for (int i = 0; i < 6; i++) {
    if (i == 2) continue;
    if (i == 4) break;
    print(i);
  }

  print('--- Part C2 ---');
  int day = 2;
  switch (day) {
    case 1:
    case 2:
      print('Early week');
    case 3:
      print('Midweek');
    default:
      print('Weekend soon');
  }

  print('--- Part C3 ---');
  int? bonus;
  print(bonus ?? 50);
  bonus ??= 70;
  bonus ??= 90;
  print(bonus);

  int n = 10;
  do {
    print(n);
    n += 3;
  } while (n < 10);

  print('--- Part C4 ---');
  int xC4 = d;
  String result = '';
  while (xC4 > 0) {
    if (xC4 % 2 == 0) {
      result += 'E';
    } else {
      result += '0';
    }
    xC4 -= 3;
  }
  print(result);
  print(result.length);
  print(result.isEmpty ? 'nothing' : result[0]);
}

void drawTriangle(int height) {
  // this is C5 function, we will add call later
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
