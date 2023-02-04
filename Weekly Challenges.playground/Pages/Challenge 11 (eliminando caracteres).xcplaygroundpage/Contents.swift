import Foundation

/*
 * Reto #11
 * ELIMINANDO CARACTERES
 * Fecha publicación enunciado: 14/03/22
 * Fecha publicación resolución: 21/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba dos cadenas como parámetro (str1, str2) e imprima otras dos cadenas como salida (out1, out2).
 * - out1 contendrá todos los caracteres presentes en la str1 pero NO estén presentes en str2.
 * - out2 contendrá todos los caracteres presentes en la str2 pero NO estén presentes en str1.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


func eliminateCharacters(str1: String, str2: String) -> (out1: String, out2: String) { // Creamos una función donde estamos metiendo str1 y str2 como parámetros, y de vuelta out1 y out2, todos de tipo string.
    var out1: String = "" // Creamos una variable vacía que se irá rellenando y actualizando
    for characterSTR1: Character in str1.lowercased() { // Recorremos str1 (lowercased, para no mezclar mayúsculas y minúsuclas)
        if !str2.contains(characterSTR1) { // Si str2 NO contiene los carácteres de characterSTR1...
            out1 += String(characterSTR1) // añadimos al out1 los caracteres de characterSTR1
        }
    }
    // Esto es lo mismo pero al revés
    var out2: String = ""
    for charactersSTR2: Character in str2.lowercased() {
        if !str1.contains(charactersSTR2) {
            out2 += String(charactersSTR2)
        }
    }
    return (out1, out2)
}

print(eliminateCharacters(str1: "Hola", str2: "a"))
print(eliminateCharacters(str1: "Me gusta Objective-C", str2: "Me gusta Swift"))




