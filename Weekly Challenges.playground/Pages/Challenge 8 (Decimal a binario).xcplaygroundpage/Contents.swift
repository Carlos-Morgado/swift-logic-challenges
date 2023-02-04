import Foundation

/*
 * Reto #8
 * DECIMAL A BINARIO
 * Fecha publicación enunciado: 18/02/22
 * Fecha publicación resolución: 02/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


// Para sacar el binario de un número hay que dividir primero dicho número entre 2, y después su cociente entre 2 tantas veces hasta que obtengamos de cociente un 1 o 0.

// Ha medida que vayamos haciendo las divisiones hay que apuntar el resto de la división sin contar los decimales del cociente. De resto nos tiene que salir 0 o 1, hasta donde lleguemos sin decimales, es decir, no hay que hacer la división completa.

// De la última división, además de añadir su resto, hay que añadir su cociente.

// El resultado final del binario de un número es todos los restos + el último cociente 1, y hay que invertirlo. numeroBinario = últimocociente + todos los restos


/* var number = 50
let binaryNumber = String(number, radix: 2)

func decimalToBinary(decimal: Int) -> String {
    return binaryNumber
}

print("El binario del número \(number) es \(binaryNumber)") */



func decimalToBinary(_ decimal: Int) -> String {
    
    var number = decimal
    var binary = ""
    
    while number != 0 {
        
        let reminder = number % 2 // Obtener el resto
        number /= 2
        // number = number/2 Actualiza el number
        
        binary = "\(reminder)\(binary)"
    }
    
    return binary.isEmpty ? "0" : binary
}

print(decimalToBinary(387))
print(decimalToBinary(0))





