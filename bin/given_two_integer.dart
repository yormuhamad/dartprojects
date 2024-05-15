void main() {
  int a = 5;
  int b = 3;
  int product = multiply(a, b);
  print("Произведение $a и $b: $product");
}

int multiply(int a, int b) {
  int result = 0;

  while (b != 0) {
    if ((b & 1) == 1) { // Если младший бит второго числа установлен
      result += a;      // Добавляем значение первого числа к результату
    }
    a <<= 1;            // Сдвигаем первое число на один разряд влево
    b >>= 1;            // Сдвигаем второе число на один разряд вправо
  }

  return result;
}
