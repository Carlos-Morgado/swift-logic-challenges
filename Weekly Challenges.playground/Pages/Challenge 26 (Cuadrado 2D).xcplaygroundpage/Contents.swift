import Foundation

/*
 * Reto #26
 * CUADRADO Y TRIÁNGULO 2D
 * Fecha publicación enunciado: 27/06/22
 * Fecha publicación resolución: 07/07/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa que dibuje un cuadrado o un triángulo con asteriscos "*".
 * - Indicaremos el tamaño del lado y si la figura a dibujar es una u otra.
 * - EXTRA: ¿Eres capaz de dibujar más figuras?
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

//MARK: - SQUARE: NESTED LOOP METHOD

// https://www.tutorialspoint.com/swift-program-to-print-upper-star-triangle-pattern
// https://stackoverflow.com/questions/50622689/printing-a-star-pattern-in-swift-using-stride-function

enum PolygonType {
    case square
    case triangle
    case diamond
}

func polygon2D(size: Int, polygoneType: PolygonType) {
//    if polygoneType == PolygonType.square {
//        drawSquare(size: size)
//    } else if polygoneType == PolygonType.triangle {
//        drawTriangle(size: size)
//    }
    switch polygoneType {
    case PolygonType.square:
        drawSquare(size: size)
    case PolygonType.triangle:
        drawTriangle(size: size)
    default:
        print("No estamos contemplando este tipo de polígono")
    }
}

func drawSquare(size: Int) {
    // Handle the length of pattern
    for _ in 1...size{
       // Printing solid square star pattern
       for _ in 1...size {
          print("*", terminator : " ")
       }
       // New line after each row
       print(" ")
    }
}

func drawTriangle(size: Int) {
    for i in 1...size{

       // Printing white spaces
       for _ in stride(from: size, to: i, by: -1){
          print(terminator : " ")
       }
       
       // Printing upper star triangle pattern
       for _ in 1...i{
          print("*", terminator : "")
       }
       
       // New line after each row
       print(" ")
    }
}

polygon2D(size: 6, polygoneType: PolygonType.square)
polygon2D(size: 8, polygoneType: PolygonType.triangle)

// Size of the solid square star pattern
var num = 6

// Handle the length of pattern
for _ in 1...num{

   // Printing solid square star pattern
   for _ in 1...num {
      print("*", terminator : " ")
   }
   
   // New line after each row
   print(" ")
}

/* Here, in the above code, we uses nested for loops to print solid square star pattern. The outer most for loop(starts from 1 to 6) is use to handle the total number of rows are going to print and each row is start with new line. Now the nested for loop(starts from 0 to 6) is used to print the “*” in solid square pattern. */

// MARK: - SQUARE: NESTED LOOP + STRIDE FUNCTION

// Size of the solid square star pattern
let size = 8

// Handle the length of pattern
for _ in 1...size{

   // Printing solid square star pattern
   // Using stride() function
   for _ in stride(from: 0, to: size, by: 1){
      print("*", terminator: " ")
   }
   print("")
}

/* Here in the above code, we use nested for loops. The outermost for loop (starts from 1 to 8) is used to handle the total number of rows are going to print and each row starts with a new line. The nested for loop is used to print solid square star pattern using stride() function. Here the iteration starts from 0 to num and each iteration increased by one and print “*” in solid square pattern. */

// MARK: - TRIANGLE: NESTED LOOP + STRIDE FUNCTION


// Height of the upper star triangle pattern
let sizeTriangle = 9
for i in 1...sizeTriangle{

   // Printing white spaces
   for _ in stride(from: sizeTriangle, to: i, by: -1){
      print(terminator : " ")
   }
   
   // Printing upper star triangle pattern
   for _ in 1...i{
      print("*", terminator : "")
   }
   
   // New line after each row
   print(" ")
}
