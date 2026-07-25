import 'dart:io';

// Hot reload applies code changes while preserving the current app state.
// Hot restart restarts the application and resets the app state.
// Stop and Re-Run completely stops the application and starts it again.

bool isPrime(int n) {
  if (n < 2) {
    return false;
  }

  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print('Enter N:');

  var n = int.parse(stdin.readLineSync()!);

  if (isPrime(n)) {
    print('$n is a prime number.');
  } else {
    print('$n is not a prime number.');
  }
}
