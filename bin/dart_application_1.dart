void main() {
  int a = 5;
  int b = 3;
  int product = multiply(a, b);
  print("Произведение $a и $b: $product");
}

int multiply(int a, int b) {
  int result = 0;
  bool isNegative = (a < 0 && b > 0) || (a > 0 && b < 0); // Определение знака произведения
  a = a.abs();
  b = b.abs();

  for (int i = 0; i < b; i++) {
    result += a;
  }

  return isNegative ? -result : result; // Учитываем знак произведения
}