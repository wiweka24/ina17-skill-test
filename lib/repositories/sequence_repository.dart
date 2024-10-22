class SequenceRepository {
  // 1,2,3
  String generateSeries(int n) {
    return List.generate(n, (i) => (i + 1).toString()).join(' ');
  }

  // palindrome
  String generatePalindromeSeries(int n) {
    List<String> firstPart = List.generate(n, (i) => (i + 1).toString());
    List<String> secondPart =
        List.generate(n - 1, (i) => (n - i - 1).toString());
    return (firstPart + secondPart).join(' ');
  }

  // 10, 10 + 11*n
  String generateSpecialSeries(int n) {
    return List.generate(n, (i) => ((i * 11) + 10).toString()).join(' ');
  }

  // 5x -> LIMA, 7x -> TUJUH
  String generateMultiplesSeries(int n) {
    return List.generate(n, (i) {
      int value = i + 1;
      if (value % 5 == 0 && value % 7 == 0) {
        return 'LIMATUJUH';
      } else if (value % 5 == 0) {
        return 'LIMA';
      } else if (value % 7 == 0) {
        return 'TUJUH';
      }
      return value.toString();
    }).join(' ');
  }
}
