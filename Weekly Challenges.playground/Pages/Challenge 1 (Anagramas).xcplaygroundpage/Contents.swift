import Foundation

/*
 * Reto #1
 * ¿ES UN ANAGRAMA?
 * Fecha publicación enunciado: 03/01/22
 * Fecha publicación resolución: 10/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Bool) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


func isAnagram(wordOne: String, wordTwo: String) -> Bool {
    let wordOneLowerCase = wordOne.lowercased()
    let wordTwoLowerCase = wordTwo.lowercased()
    if wordOneLowerCase == wordTwoLowerCase {
        return false
    } else {
        let wordOneSorted = wordOneLowerCase.sorted()
        let wordTwoSorted = wordTwoLowerCase.sorted()
        // return wordOneSorted == wordTwoSorted
        return wordOneSorted.elementsEqual(wordTwoSorted)
    }
}




isAnagram(wordOne: "saco", wordTwo: "cosa")

isAnagram(wordOne: "apple", wordTwo: "iPhone")

isAnagram(wordOne: "saco", wordTwo: "saco")

isAnagram(wordOne: "Saco", wordTwo: "saco")

isAnagram(wordOne: "SACO", wordTwo: "cosa")



