void main() {
  void forEachCLone<T>(List<T> lst, void Function(T index) Operation) {
    for (T index in lst) {
      Operation(index);
    }
  }

  forEachCLone(['Omar', 'Abdullah', 'Abd alrahman', 'Moharam'], (index) {
    print(index);
  });
}
