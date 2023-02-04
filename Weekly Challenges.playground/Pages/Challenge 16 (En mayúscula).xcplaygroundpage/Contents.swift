import Foundation

/*
 * Reto #16
 * EN MAYÚSCULA
 * Fecha publicación enunciado: 18/04/22
 * Fecha publicación resolución: 25/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba un String de cualquier tipo y se encargue de
 * poner en mayúscula la primera letra de cada palabra.
 * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


//MARK: - PLANTEAMIENTO


// Creamos el texto original que meteremos como parámetro de la función

// Dicha función devolverá un string

// El texto original lo dejamos en lowercased para que sean todo minúsuculas, ya que el texto de entrada puede venir originalmente con alguna mayúscula, así lo unificamos todo y no tenemos problemas para añadir las mayúsculas posteriormente.

// Al texto lowercased le hacemos un array de strings, jugando con los espacios (con .components(separatedBy:... o .split...) para reconocer las palabras individuales que tiene la frase.

// Hacemos un buble for al array de strings en el que a cada palabra (a través de un .map), le hacemos un uppercased (o .capitalized) a su primera letra




// MARK: -- OPCIÓN 1

/* func capitalizedSentence(originalText: String) -> String {
        let originalTextLowerCased = originalText.lowercased()
        let individualWords: [String] = originalTextLowerCased.components(separatedBy: " ")
        let capitalizedWord = individualWords.map({$0.capitalized})
        let stringCapitalizedWord = capitalizedWord.joined(separator: " ")

        return stringCapitalizedWord
    }

capitalizedSentence(originalText: "¿cómo vas?") */


// MARK: -- OPCIÓN 2

func capitalizedSentence(text: String) -> String {
    let capitalizedTextLowerCased = text.lowercased()
    let individualWords: [String] = capitalizedTextLowerCased.components(separatedBy: " ")
    var capitalizedText = "" // IMPORTANTE
    for words in individualWords {
        let firstLetterUppercased = words.prefix(1).uppercased() // otra opción es .FIRST
        let restLetters = words.dropFirst()
        capitalizedText += firstLetterUppercased + restLetters + " " // CONCATENAR
    }
    return capitalizedText
}

capitalizedSentence(text: "HOLA ME LLAMO CARLOS")


// MARK: -- IDEAS, INSPIRACIÓN


// Excepcionales
// .Split
// .Components
// .capitalized
// .first
// .prefix()



/* extension String {
    var capitalizedSentence: String {
        // 1
        let firstLetter = self.prefix(1).capitalized
        // 2
        let remainingLetters = self.dropFirst().lowercased()
        // 3
        return firstLetter + remainingLetters
    }
}

let hello = "hello, world!"
let shout = "UPPERCASED"
let lorem = "Itaque enim excepturi placeat aperiam sunt molestiae sint ea."

print(hello.capitalizedSentence)
print(shout.capitalizedSentence)
print(lorem.capitalizedSentence) */






