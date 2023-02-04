import Foundation

/*
 * Reto #13
 * FACTORIAL RECURSIVO
 * Fecha publicación enunciado: 28/03/22
 * Fecha publicación resolución: 04/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule y retorne el factorial de un número dado de forma recursiva.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


// La función factorial se representa con un signo de exclamación “!” detrás de un número. Esta exclamación quiere decir que hay que multiplicar todos los números enteros positivos que hay entre ese número y el 1.

// Ejemplo: 6! = 1x2x3x4x5x6 = 720

// CASO ESPECIAL-> 0! = 1

// En tu calculadora podrás ver una tecla con “n!” o “x!”. Esta tecla te servirá para calcular directamente el factorial del número que quieras.


// MARK: - Swift Factorial Program using For-in Loop

/* func factorial(n: Int) -> Int {
    var result = 1
    if(n > 0) {
        for i in 1...n {
            result *= i
        }
    }
    return result
}

let num = 6
let result = factorial(n: num)
print("\(num)! = \(result)") */

//MARK: - Swift Factorial Program using Recursion

func factorial(n: Int) -> Int {
    return n <= 1 ? 1 : n * factorial(n: n - 1)
}
 
let num = 5
let result = factorial(n: num)
print("\(num)! = \(result)")




