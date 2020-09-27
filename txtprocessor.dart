class TxtProcessor {
   static String initGuessed(String keyword) {
     var guessedLetters = "";
  for (int i = 0; i < keyword.length; i++) {
      guessedLetters = "_ $guessedLetters";
     }
    return guessedLetters;
   }

  /*
   * PRUEBA de DANY haciendo un Push en otra rama.
   * #3. Se está probando una nueva letra? está en la lista de intentos?
   * Si la letra no está en [a-z] o [A-Z] será falso.
   * No es sensitivo a mayúsculas y minúsculas, la 'a' y la 'A' son igual.
   */
  static bool isNewLetterInList(String letter, List<String> letterTrialList) {
    int a = letter.compareTo("a"); //-1
    int z = letter.compareTo("z"); // 1
    int A = letter.compareTo("A"); //-1
    int Z = letter.compareTo("Z"); // 1
    if ((a < 0) || (Z > 0) || (z > 0) && (A < 0)) {
      return false;
    }

    if (letterTrialList.indexOf(letter) == -1) {
      return false;
    }

    return true;
  }

  // stub

  /*
   * #4. Comprobar si una letra está en una palabra.
   */
  static bool isLetterInWord(String letter, String word) {
   return true; // stub
   }

  /*
   * #5. Las letras de la lista que estén en la palabra clave
   * deben ser representadas en las posiciones que aparecen en ella.
   * Si una letra no está en la lista se representará con guión bajo.
   * Entre las letras y los guiones hay un espacio para formatearlo.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "b u _ _ s e _ e"
   */
  static String guessedLetters(String keyword, List<String> letterTrialList) {
    return "b u _ _ s e _ e"; // stub
  }

  /*
   * #6. Las letras que están en la lista pero no en la palabra clave
   * deben aparecer separadas por un espacio.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "a i t"
   */
   static String missedLetters(String keyword, List<String> letterTrialList) {
    var missedLetters = "";
  // stub (está mal, incorpora todas las letras, era para ver cambios)
  //   for (int i = 0; i < letterTrialList.length; i++) {
//      missedLetters = "$missedLetters ${letterTrialList[i]}";
   }
     return missedLetters;
  //}

}

//void main() {
//  String a = "@";
 // List<String> lista = new List.empty();
 // lista.add("a");
//  lista.add("b");
//  lista.add("c");
//  lista.add("d");

//  if (TxtProcessor.isNewLetterInList(a, lista) == true) {
 //   String resul = "esta en el rango";
 //   print(resul);
//  } else {
 //   String resul = "esta fuera del rango";
//print(resul);
 // }
//}
