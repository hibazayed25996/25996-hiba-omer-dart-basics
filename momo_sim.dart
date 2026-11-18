// Student: Hiba Omer Ahmed Zayed
// Reg no: 25996/2024

const String regNo = '25996';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// by H.O.A.Z
String formatRwf(int amount) {
  String s = amount.abs().toString();
  String result = '';
  int count = 0;
  for (int i = s.length - 1; i >= 0; i--) {
    result = s[i] + result;
    count++;
    if (count == 3 && i != 0) {
      result = ',' + result;
      count = 0;
    }
  }
  if (amount < 0) {
    result = '-' + result;
  }
  return result + ' RWF';
}

// by H.O.A.Z
bool isValidPin(String pin) {
  if (pin.length != 5) return false;
  for (int i = 0; i < pin.length; i++) {
    if (!RegExp(r'[0-9]').hasMatch(pin[i])) return false;
  }
  if (pin == '12345') return false;
  bool allSame = true;
  for (int i = 1; i < pin.length; i++) {
    if (pin[i] != pin[0]) {
      allSame = false;
      break;
    }
  }
  if (allSame) return false;
  return true;
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
int sendMoney(int balance, int amount) {
  int fee = momoFee(amount);
  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }
  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  print('Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). New balance: ${formatRwf(balance - amount - fee)}');
  return balance - amount - fee;
}

// by H.O.A.Z
int buyAirtime(int balance, int amount) {
  if (amount < 100 || amount > 50000) {
    print('Failed: invalid airtime amount');
    return balance;
  }
  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  print('Bought airtime ${formatRwf(amount)}. New balance: ${formatRwf(balance - amount)}');
  return balance - amount;
}

void main() {
  print('Reg no: $regNo | D = $d | T = $t');

  print('--- PIN Validation ---');
  print('12345: ${isValidPin('12345')}');
  print('77777: ${isValidPin('77777')}');
  print('4821: ${isValidPin('4821')}');
  print('48a21: ${isValidPin('48a21')}');
  print('4821$d: ${isValidPin('4821$d')}');

  int balance = 20000 + t * 500;
  print('Starting balance: ${formatRwf(balance)}');

  print('--- Transactions ---');
  int i = 1;
  while (i <= 3) {
    balance = sendMoney(balance, (d + 1) * 3000);
    i++;
  }
  
  balance = buyAirtime(balance, 1000);
  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);

  print('Final balance: ${formatRwf(balance)}');

  print('--- Extra Tests ---');
  print(formatRwf(0)); // Expected: 0 RWF
  print(formatRwf(1000)); // Expected: 1,000 RWF
  print(formatRwf(1250000)); // Expected: 1,250,000 RWF
  print(formatRwf(-5000)); // Expected: -5,000 RWF
  print(isValidPin('00000')); // Expected: false
  print(isValidPin('98765')); // Expected: true
}
