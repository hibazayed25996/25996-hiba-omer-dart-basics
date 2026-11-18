// Student: Hiba Omer Ahmed Zayed
// Reg no: 25996/2024

const String regNo = '25996';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  print('Reg no: $regNo | D = $d | T = $t');
  
  print('--- Part B2 ---');
  print('Hiba Omer Ahmed Zayed has ${countVowels('Hiba Omer Ahmed Zayed')} vowels');

  print('--- Part B3 ---');
  print(initials('Hiba Omer Ahmed Zayed'));
  print(initials('ana uwase'));
  print(initials(''));

  print('--- Part C5 ---');
  print('Height ${d + 3}:');
  drawTriangle(d + 3);
  print('Height 0:');
  drawTriangle(0);
  print('Height -2:');
  drawTriangle(-2);

  print('--- Part D2 ---');
  int totalFees = 0;
  int i = 1;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone('0788123456')}');
    totalFees += fee;
    i++;
  }
  print('Total fees: $totalFees RWF');
}

// by H.O.A.Z
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

// by H.O.A.Z
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

// by H.O.A.Z
void drawTriangle(int height) {
  if (height <= 0) return;
  int i = 1;
  while (i <= height) {
    String row = '';
    int spaces = height - i;
    int s = 0;
    while (s < spaces) {
      row += ' ';
      s++;
    }
    String char = (i % 2 == 0) ? '#' : '*';
    int c = 0;
    while (c < i) {
      row += char;
      c++;
    }
    print(row);
    i++;
  }
}

// by H.O.A.Z
int momoFee(int amount) {
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

// by H.O.A.Z
String maskPhone(String phone) {
  if (phone.length != 10) return 'INVALID';
  return phone.substring(0, 3) + '***' + phone.substring(8);
}
