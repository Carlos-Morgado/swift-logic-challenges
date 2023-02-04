import Foundation

/*
 * Reto #12
 * ¿ES UN PALÍNDROMO?
 * Fecha publicación enunciado: 21/03/22
 * Fecha publicación resolución: 28/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
 * Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
 * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
 * Ejemplo: Ana lleva al oso la avellana.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func isPalindrome (text: String) -> Bool {
    // Array de caracteres strings del texto original, hay que hacer que todas las letras sean minúsculas (swift considera que una mayúscula y una minúscula son diferentes, pero en el palíndromo se leen por igual), y hay que eliminar los espacios, puntuación y tildes
    let originalTextLowercase = text.lowercased() // Hacemos que el texto que entra a la función se quede en minúscula.
    let originalTextWithoutAccent = originalTextLowercase.folding(options: .diacriticInsensitive, locale: .current) // Quitamos las tildes
    let originalTextWithoutSpace = originalTextWithoutAccent.replacingOccurrences(of: " ", with: "") // Quitamos los espacios
    let originalTextWithoutMarkPunctuations = originalTextWithoutSpace.filter({ //
        return !$0.isPunctuation // Filter es un método funcional, función anónima en la que metemos un parámetro // Aquí estamos quitando los signos de puntación.
    })

    let originalTextArray = Array(originalTextWithoutMarkPunctuations) // Hacemos array sobre el texto ya en minúsuclas, sin tildes, y sin signos de puntuación.
    
    
    /* // Mismo array del texto original pero al revés
    var textReversed = originalText
    var textReversedArray = Array(textReversed)
    textReversedArray.reverse() */

    // De estos arrays hay que sacar el index y elemento de cada uno
    for (leftIndex, leftItem) in originalTextArray.enumerated() {
        let rightIndex = originalTextArray.count - 1 - leftIndex
        let rightItem = originalTextArray[rightIndex]
        if rightItem != leftItem {
            return false
        }
    }
    
    
    // Bucle for para recorrer los arrays (o los index)
        // If : Si el primer caracter del array original es igual al último del array inverso (¿Hacemos estas comparaciones con los index de los arrays?), tiene que seguir el bucle comparando los siguientes caracteres, hasta que haya alguno que sea diferente y salte al else, o no, en el caso de que sean todos iguales, en cuyo caso sería un palíndromo y saltaríamos directamente al return booleano general de la función
            // Else : Hacemos un return FALSE y Hacemos un print que diga que "no es un palíndromo"
    // Hay que retornar el bool general
    // Llamamos a la función y metemos el texto, ya que lo tenemos como parámetro inicial de la función.
    
    return true
    // return originalTextWithoutMarkPunctuations == originalTextWithoutMarkPunctuations.reversed() (Solución de Brais, sustituiría al for)
}

print(isPalindrome(text: "Ana! lleva al oso, la. avellana?¿?¿?!!"))
print(isPalindrome(text: "Hola me llamo Carlos"))




let text = "Hello"
let arrayText = Array(text)
arrayText.count // Sacar solo elementos del array

//SACAR INDEX Y ELEMENTOS DE UN ARRAY

let myArray = ["a", "b", "c", "d"]
for (index, item) in myArray.enumerated() {
   print(index, item)
}





