import 'dart:io';

class Input {
  /*
   * #2. Controlar que el byte leido es una letra.
   * Sino, devolver un caracter que luego se procese,
   * para no ser tratado como una letra valida.
   * Por ejemplo, en isNewLetterInList que devuelva falso.
   */
  static String readLetter() {
    stdin.echoMode = false;
    stdin.lineMode = false;
    stdout.write("Letra: ");
    int c = stdin.readByteSync(); // 10=Enter, 27=Esc
    String s = String.fromCharCode(c);
    if (isAletter(s) == false) {
      s = "@";
    }

    print(s);
    return s;
  }

  static bool isAletter(String letter) {
    int a = letter.compareTo("a"); //-1
    int z = letter.compareTo("z"); // 1
    int A = letter.compareTo("A"); //-1
    int Z = letter.compareTo("Z"); // 1
    if ((a < 0) || (Z > 0) || (z > 0) && (A < 0)) {
      return false;
    }
    return true;
  }
}
