import Foundation

/*
 * Reto #19
 * CONVERSOR TIEMPO
 * Fecha publicación enunciado: 09/05/22
 * Fecha publicación resolución: 16/05/22
 * Dificultad: FACIL
 *
 * Enunciado: Crea una función que reciba días, horas, minutos y segundos (como enteros) y retorne su resultado en milisegundos.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func timeToMillis (day: Int, hour: Int, minute:Int, second: Int) -> Int {
    let dayToMillis = 86400000 * day
    let hourToMillis = 3600000 * hour
    let minuteToMillis = 60000 * minute
    let secondToMillis = 1000 * second
    let finalTimeResult = dayToMillis + hourToMillis + minuteToMillis + secondToMillis
    return finalTimeResult
}

print("El resultado final es \(timeToMillis(day: 26, hour: 9, minute: 30, second: 15)) milisegundos")
