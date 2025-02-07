class CounterDataSource {
  int _counter = 0;

  int getCounter() {
    return _counter;
  }

  void saveCounter(int value) {
    _counter = value;
  }
}