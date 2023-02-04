import Foundation

/*
 * Reto #3
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func isPrime (number:Int) -> Bool {
    print("ESTE ES EL PARÁMETRO PARA VER SI ES PRIMO: \(number)")
    if number < 2 {
        print("DEVOLVEMOS QUE NO ES PRIMO PORQUE ES CERO O UNO")
        return false
    }
    print("VAMOS A CALCULAR SI ALGÚN NÚMERO HACE DIVISIBLE A NUESTRO PARÁMETRO")
    for indexDivisible in 2..<number {
        print("ESTE ES EL NÚMERO PARA VER SI HACE DIVISIBLE A NUESTRO PARÁMETRO: \(indexDivisible)")
        if number % indexDivisible == 0 {
            print("ESTE NÚMERO ES DIVISIBLE POR NUESTRO PARÁMETRO: \(indexDivisible). POR LO TANTO ESTE PARÁMETRO NO ES PRIMO")
            return false
        } else {
            print("ESTE NÚMERO NO ES DIVISIBLE POR NUESTRO PARÁMETRO")
        }
    }
    print("NO HEMOS ENCONTRADO NINGÚN NÚMERO DIVISIBLE DE NUESTRO PARÁMETRO, POR LO QUE ES PRIMO")
    return true
}

isPrime(number: 7)


for indexPrime in 1...100 {
    print("ÍNDICE PARA CALCULAR PRIMO:\(indexPrime)")
    if isPrime(number: indexPrime) { // A number le estamos pasando un valor al parámetro
        print("ESTE NÚMERO ES PRIMO: \(indexPrime)")
    }
    print("----------")
}
