import Foundation

/*
 * Reto #22
 * CONJUNTOS
 * Fecha publicación enunciado: 01/06/22
 * Fecha publicación resolución: 07/06/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba dos array, un booleano y retorne un array.
 * - Si el booleano es verdadero buscará y retornará los elementos comunes de los dos array.
 * - Si el booleano es falso buscará y retornará los elementos no comunes de los dos array.
 * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

// MARK: - PLANTEAMIENTO

// Creamos los dos array por fuera de la función. Tendrán elementos comunes y no comunes
// Creamos la constante boolean y le damos un valor
// Creamos la función con los dos array y el booleano de entrada, y retorne un array
    // Dentro de la función, convertimos los dos arrays en sets, y los almacenamos en constantes
    // If bool is true
            // Comparamos los dos sets para obtener los elementos comunes que tienen (.intersection), hacemos TypeCast a array, y lo almacenamos a una constante llamada "common array"
            // Retornamos "common array"
        // Else
            // Comparamos los dos sets para obtener los elementos que NO TIENEN EN COMÚN (.symmetricDifference) hacemos TypeCast a array, y lo almacenamos a una constante llamada "notcommonarray"
            // retornamos "notCommonArray"
// Llamamos a la función


// MARK: - RESOLUCIÓN

let actorsArray = ["Clint Eastwood", "Michael J. Fox", "Charles Chaplin", "Harrison Ford", "Tom Hanks"]
let directorsArray = ["Steven Spielberg", "Clint Eastwood", "Charles Chaplin", "Quentin Tarantino", "Robert Zemeckis"]
let boolean: Bool = false

func groupElements (array1: [String], array2: [String], bool:Bool) -> [String] {
    let array1Set = Set(array1)
    let array2Set = Set(array2)
    /* if bool == true {
        let commonArray = Array(array1Set.intersection(array2Set))
        return commonArray
    } else {
        let notCommonArray = Array(array1Set.symmetricDifference(array2Set))
        return notCommonArray
    } */
    return bool ? Array(array1Set.intersection(array2Set)) : Array(array1Set.symmetricDifference(array2Set))
}

groupElements(array1: actorsArray, array2: directorsArray, bool: boolean)

