import Foundation

/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación. */


//MARK: -

protocol Polygon {
    func printArea()
}


struct Rectangle: Polygon {
    var lenght: Double
    var width: Double
    func printArea() {
        print("El área del rectángulo es \(lenght * width)")
    }
}


struct Square: Polygon {
    var side: Double
    func printArea() {
        print("El área del cuadrado es \(side * side)")
    }
}

struct Triangle: Polygon {
    var base: Double
    var heigh: Double
    func printArea() {
        print("El área del triángulo es \((base * heigh)/2)")
    }
}


func printPolygonArea (polygon: Polygon){
    polygon.printArea()
}


printPolygonArea(polygon: Rectangle.init(lenght: 20.0, width: 5.0))
printPolygonArea(polygon: Square(side: 12.0))
printPolygonArea(polygon: Triangle(base: 6.0, heigh: 3.0))
