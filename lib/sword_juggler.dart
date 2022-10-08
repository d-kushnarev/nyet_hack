void start() {
  int? swordsJuggling; // == null
  final isJugglingProficient = ([1, 2, 3]..shuffle()).last == 3;
  if (isJugglingProficient) {
    swordsJuggling = 2;
  }

  // Errors
  // Exceptions

  try {
    swordsJuggling = swordsJuggling! ~/ 1;
  } catch (exp) {
    print(exp);
  } finally {
    print("I'm here");
  }

  print('You juggled $swordsJuggling swords');
}
