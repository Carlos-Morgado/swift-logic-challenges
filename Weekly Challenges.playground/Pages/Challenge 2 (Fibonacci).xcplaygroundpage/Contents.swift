import Foundation

/* Reto #2
 * LA SUCESIÓN DE FIBONACCI
 * Fecha publicación enunciado: 10/01/22
 * Fecha publicación resolución: 17/01/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Escribe un programa que imprima los 50 primeros números de la sucesión de Fibonacci empezando en 0.
 * La serie Fibonacci se compone por una sucesión de números en la que el siguiente siempre es la suma de los dos anteriores.
 * 0, 1, 1, 2, 3, 5, 8, 13... */

var numeroAnteriorAnterior = 0
var numeroAnterior = 1

for index in 1...50 {
    if index == 1 {
        print(numeroAnteriorAnterior)
    } else if index == 2 {
        print(numeroAnterior)
    } else {
        let numeroNuevoFibonacci = numeroAnteriorAnterior+numeroAnterior
        print(numeroNuevoFibonacci)
        numeroAnteriorAnterior = numeroAnterior
        numeroAnterior = numeroNuevoFibonacci
    }
}

