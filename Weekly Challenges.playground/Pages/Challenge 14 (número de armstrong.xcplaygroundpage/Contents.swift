import Foundation

/*
 * Reto #14
 * ¿ES UN NÚMERO DE ARMSTRONG?
 * Fecha publicación enunciado: 04/04/22
 * Fecha publicación resolución: 11/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule si un número dado es un número de Armstrong (o también llamado narcisista).
 * Si no conoces qué es un número de Armstrong, debes buscar información al respecto.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

//MARK: - INVESTIGACIÓN

// El número de Armstrong es aquel que es igual a la suma de sus dígitos elevados a la potencia de su número de cifras.
// Ejemplos:
    // 153 = 1(3) + 5(3) + 3(3) = 1 + 125 + 27 = 153 ---> ES ARMSTRONG
    // 2435 = 2(4) + 4(4) + 3(4) + 5(4) = 16 + 256 + 81 + 625 = 978 ---> NO ES ARMSTRONG
    // 54748 = 3125 + 1024 + 16807 + 1024 + 32768 = 54748 ---> ES ARMSTRONG
    // 561 = 5(3) + 6(3) + 1(3) = 125 + 216 + 1 = 342 ---> NO ES ARMSTRONG
    // 49842 = 4 5 + 9 5 + 8 5 + 4 5 + 2 5 = 1024 + 59049 + 32768 + 1024 + 32 = 93897 ---> NO ES ARMSTRONG
    // 254 = 8 + 125 + 64 = 197

// Existen sólo 88 números narcisistas en base 10, el más grande con 39 dígitos es:  115.132.219.018.763.992.565.095.597.973.971.522.401 Todos los números de una cifra son narcisistas


//MARK: - EJERCICIO

    // El numberInput lo pasamos como array de INTS para sacar los dígitos (digit)
    // A ese array le hacemos un .count para sacar los elementos de dicho array, lo almacenamos en una variable y así lo usamos posteriormente como la potencia (exponent)
        // Bucle for (nombrebucle) del array
            // Hacemos el cálculo del dígito y exponente con la función pow(digit*exponent) return INT
            // Con el resultado de la función pow hay que hacer la suma para obtener el resultado final (numberResult)
    // Hacemos un if else para comprobar si es un número de Armstrong o no. Comparamos numberResult == numberInput

func isArmstrong (numberInput: Int) -> Bool {
    let digits: [Int] = String(numberInput).compactMap { Int(String($0)) } // Aquí obtenemos los dígitos a través de un array de doubles
    print("los dígitos son \(digits)")
    var exponent: Int = digits.count // Al array le hacemos count para contar el total de elementos de dicho array y usarlo como exponente
    print("El exponente es \(exponent)")
    var calculateSum: Int = 0
    for digit in digits {
        let digitExponent = Int(pow(Double(digit), Double(exponent))) //digit * exponent
        print("el dígito x exponente es \(digitExponent)")
        calculateSum = calculateSum + digitExponent
        print("La suma es \(calculateSum)")
    }
    
    if calculateSum == numberInput {
        return true
    } else {
        return false
    }
   // return calculateSum == numberInput OTRA MANERA DE HACERLO MÁS SIMPLE, NOS QUITAMOS EL IF-ELSE
}



isArmstrong(numberInput: 153)
// isArmstrong(numberInput: 8973)





/*
 
->> Cómo sacar el número + potencia de...

// opción 1
let x = 2 << 0    // 2  -> 2(1)
let y = 2 << 1    // 4  -> 2(2)
let z = 2 << 7    // 256 -> 2(8)

--> OPCIÓN 2:
 
positive: baseNumber     positive: exponent. We calculate the positive base number raised to the positive exponent using pow().
 
pow(baseNumber, exponent)
print ("The value of pow(2.0,3.0) : ",pow(2.0,3.0));

*/
