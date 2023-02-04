import Foundation

/*
 * Reto #24
 * ITERATION MASTER
 * Fecha publicación enunciado: 13/06/22
 * Fecha publicación resolución: 20/06/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Quiero contar del 1 al 100 de uno en uno (imprimiendo cada uno). ¿De cuántas maneras eres capaz de hacerlo? Crea el código para cada una de ellas.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


// MARK: - 1

/* for index in 1...100 {
    print(index)
}
 */

// MARK: - 2

/* for index in 1..<100 {
    print(index+1)
} */

// MARK: -

var count = 0

repeat{
    print(count)
    count = count + 1
} while count < 101

// MARK: - 4

func printNumbers(number: Int) {
    if number <= 100 {
        print(number)
        printNumbers(number: number + 1)
    }
}

printNumbers(number: 1)

// 6
print("**** 6 ****")

print((1...100).filter { _ -> Bool in
    return true
})

// 7
print("**** 7 ****")

print((1...100).map { $0 })

// 2
print("**** 2 ****")

(1...100).forEach { index in
    print(index)
}




