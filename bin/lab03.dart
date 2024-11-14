class FunctionTabulator {
  double start;
  double end;
  double step;

  FunctionTabulator(this.start, this.end, {this.step = 0.1});

  void setStep(double newStep) {
    step = newStep;
  }

  double calculateFunction(double x) {
    return (x * x * x - 3) * (x * x + 3);
  }

  double tabulateAndSum() {
    double sum = 0.0;

    for (double x = start; x <= end; x += step) {
      double y = calculateFunction(x);
      sum += y;
    }

    return sum;
  }
}

void main() {
  FunctionTabulator tabulator = FunctionTabulator(-3.0, 8.0);

  double sum = tabulator.tabulateAndSum();
  print('\nСума значень функції: $sum');

  tabulator.setStep(0.5);
  print('\nТабулювання з новим кроком 0.5:');

  sum = tabulator.tabulateAndSum();
  print('\nСума значень функції після зміни кроку: $sum');
}
