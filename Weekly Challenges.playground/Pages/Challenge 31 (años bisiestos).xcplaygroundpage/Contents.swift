import Foundation

/*
 * Reto #31
 * AÑOS BISIESTOS
 * Fecha publicación enunciado: 01/08/22
 * Fecha publicación resolución: 08/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que imprima los 30 próximos años bisiestos siguientes a uno dado.
 * - Utiliza el menor número de líneas para resolver el ejercicio.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

// MARK: - NOTAS

/* Cualquier año divisible por 4 es un año bisiesto, como 2016, 2020, 2024, 2028.
 
 Nota: La regla anterior no se aplica a los años de siglo.

 Siglos como 1900 y 2000 solo tienen un día bisiesto si son divisibles por 400.
 1900 es divisible entre 4 y también entre 100, pero no entre 400, por lo que no es un año bisiesto.
 Esto significa que los siglos son solo un año bisiesto si son divisibles por 400.

 Entonces 1900 no lo es, 2000 lo es, 2100, 2200, 2300 no lo es, pero 2400 es otro año bisiesto.
 
 Cualquier año divisible por 4 es un año bisiesto: por ejemplo, 1988, 1992 y 1996 son años bisiestos.

 Sin embargo, hay un pequeño error de cálculo que debe tenerse en cuenta. Para eliminar este error, el calendario gregoriano estipula que un año que es divisible por 100 (por ejemplo, 1900) es un año bisiesto solo si también es divisible por 400.

 Por esta razón, los años siguientes no son años bisiestos:

 1700, 1800, 1900, 2100, 2200, 2300, 2500, 2600

 Esto se debe a que son divisibles por 100 pero no por 400.

 Para determinar si un año es bisiesto, siga estos pasos:

 1. Si el año es uniformemente divisible por 4, vaya al paso 2. De lo contrario, vaya al paso 5.
 2. Si el año es uniformemente divisible por 100, vaya al paso 3. De lo contrario, vaya al paso 4.
 3. Si el año es uniformemente divisible por 400, vaya al paso 4. De lo contrario, vaya al paso 5.
 4. El año es un año bisiesto (tiene 366 días).
 5. El año no es un año bisiesto (tiene 365 días).

 */

// MARK: - PLANTEAMIENTO


let year = 2400

if year % 100 == 0 && year & 400 == 0{
print("This is a leap year")

    } else if (year % 4 == 0) {
    print("This is a leap year")


} else {
print("This is not a leap year")

}



func thirtyLeapYears(year: Int) {

    var currentYear = year + 1
    var numberOfLeapYearsFound = 0

    while numberOfLeapYearsFound < 30 {

        if currentYear % 4 == 0 && (currentYear % 100 != 0 || currentYear % 400 == 0) {
            print(currentYear)
            numberOfLeapYearsFound += 1
        }

        currentYear += 1
    }
}

thirtyLeapYears(year: 1999)
