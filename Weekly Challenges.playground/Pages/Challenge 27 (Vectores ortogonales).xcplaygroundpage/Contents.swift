import Foundation

/*
 * Reto #27
 * VECTORES ORTOGONALES
 * Fecha publicación enunciado: 07/07/22
 * Fecha publicación resolución: 11/07/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa que determine si dos vectores son ortogonales.
 * - Los dos array deben tener la misma longitud.
 * - Cada vector se podría representar como un array. Ejemplo: [1, -2]
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


// MARK: -- INVESTIGACIÓN

// https://miprofe.com/vectores-ortogonales/

// Cuando dos vectores A = (Ax, Ay, Az) y B = (Bx, By, Bz) son perpendiculares entre sí, es decir, forman un ángulo recto (θ = π/2), se dice que son vectores ortogonales.

// Dos vectores serán ortogonales cuando su producto escalar (también llamado producto punto y producto interno) es cero:

// A = (Ax, Ay)
// B = (Bx, By)

// A · B = AxBx + AyBy + AzBz = 0



// MARK: - PLANTEAMIENTO

// Función con parámetros de entrada, y que retorne un bool

    // Cálculo del producto escalar

    // If producto escalar == 0
        // return bool

    // Else
        // return false

    // OPERADOR TERNARIO OR IF ELSE

// Llamar a la función e introducir valores a los parámetros de entrada



// MARK: - EJERCICIO

func isOrtogonal (a:[Int], b:[Int]) -> Bool {
    let multiplication = zip(a, b).map{$0 * $1}.reduce(0, +)
    //print(multiplication)
    // let scalarProduct = multiplication.reduce(0, +)
    //print(scalarProduct)
    
    return multiplication == 0
}

print(isOrtogonal(a: [1,2], b: [-2,1]))
print(isOrtogonal(a: [5,6], b: [8,-2]))



// SOLUCIÓN BRAIS

func areOrthogonal(vectorOne: (first: Int, second: Int), vectorTwo: (first: Int, second: Int)) -> Bool {
    return vectorOne.first * vectorTwo.first + vectorOne.second * vectorTwo.second == 0
}

print(areOrthogonal(vectorOne: (first: 1, second: 2), vectorTwo: (first: 2, second: 1)))
print(areOrthogonal(vectorOne: (first: 2, second: 1), vectorTwo: (first: -1, second: 2)))



func areOrthogonal2(vectorOne: (Int, Int), vectorTwo: (first: Int, second: Int)) -> Bool { // TUPLAS, y tuplas anónimas
    return vectorOne.0 * vectorTwo.first + vectorOne.1 * vectorTwo.second == 0
}
