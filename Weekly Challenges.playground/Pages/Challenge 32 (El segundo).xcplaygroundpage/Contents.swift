import Foundation

/*
 * Reto #32
 * EL SEGUNDO
 * Fecha publicación enunciado: 08/08/22
 * Fecha publicación resolución: 15/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Dado un listado de números, encuentra el SEGUNDO más grande.
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en https://retosdeprogramacion.com/semanales2022.
 *
 */

 func sortedNumbers(arrayNumbers: [Int]) -> Int? {
     let arrayWithoutDuplicates = Array(Set(arrayNumbers))
     print(arrayWithoutDuplicates)
     if arrayWithoutDuplicates.count <= 1 {
         return nil
     }
     let arraySorted = arrayWithoutDuplicates.sorted(by: >)
     let secondGreater = arraySorted[1] // Hacemos subscript
     return secondGreater
}

print(sortedNumbers(arrayNumbers: [9,5,7,3,8,45,21,14,1,6]) ?? "No se ha encontrado ningún valor")
print(sortedNumbers(arrayNumbers: [3,3]) ?? "No se ha encontrado ningún valor")
print(sortedNumbers(arrayNumbers: []) ?? "No se ha encontrado ningún valor")
print(sortedNumbers(arrayNumbers: [5]) ?? "No se ha encontrado ningún valor")
print(sortedNumbers(arrayNumbers: [1,2,3,2,2,4,4]) ?? "No se ha encontrado ningún valor")







