import Foundation

/*
 * Reto #6
 * INVIRTIENDO CADENAS
 * Fecha publicación enunciado: 07/02/22
 * Fecha publicación resolución: 14/02/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


//MARK: - OPCIÓN 1

func reverseTextOne(originalText: String) -> String {
    let reversedText = String(originalText.reversed())
    return reversedText
}
 
print(reverseTextOne(originalText: "Hola mundo"))



//MARK: - OPCIÓN 2

func reverseText(originalText: String) -> String {
    var reversedString = ""
    for letter in originalText {
        reversedString = String(letter) + reversedString //Aquí el STring es una conversión de tipos
    }
    return reversedString
}


print(reverseText(originalText: "Hola"))
print(reverseText(originalText: "Hola mundo"))

