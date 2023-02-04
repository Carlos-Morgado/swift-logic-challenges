import UIKit
import Foundation

/*
 * Reto #5
 * ASPECT RATIO DE UNA IMAGEN
 * Fecha publicación enunciado: 01/02/22
 * Fecha publicación resolución: 07/02/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Crea un programa que se encargue de calcular el aspect ratio de una imagen a partir de una url.
 * - Url de ejemplo: https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una imagen de 1920*1080px.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

// Investigación previa: La relación de aspecto se saca dividiendo su ancho por su alto. La relación de aspecto o ratio de una imagen es la proporción entre el ancho y la altura de la imagen. Se calcula dividiendo la anchura entre la altura, y se expresa normalmente con dos números separados por dos puntos. Por ejemplo 3:2, significa que por cada tres unidades a lo ancho hay dos unidades a lo alto.


// Tenemos que hacer una función que sace la relación de aspecto de una imagen, que retorne un Double (o un print) (¿E incluir parámetros? ¿Cuáles?)
// Dicha función tiene que hacer una división cogiendo las dimensiones del ancho y del alto de la imagen del link, y así obtendremos la relación de aspecto.
// Pero antes de todo esto necesitamos sacar las dimensiones de la imagen a partir de la URL. Para ello necesitamos hacer otra función (¿Convertir el link en objeto? / ¿URL a STRING?)

let imageURL = "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png"

func imageAspectRatio(url: String) {
    if let imageSource = CGImageSourceCreateWithURL(URL(string: url)! as CFURL, nil) {
        if let imageProperties = CGImageSourceCopyPropertiesAtIndex(imageSource, 0, nil) as Dictionary? {
            let pixelWidth = imageProperties[kCGImagePropertyPixelWidth] as! Int
            let pixelHeight = imageProperties[kCGImagePropertyPixelHeight] as! Int
            let aspectRatio = pixelWidth/pixelHeight
            print("La relación de aspecto es \(aspectRatio)")
        } else {
            print("Ha fallado el método CGImageSourceCopyPropertiesAtIndex")
        }
    } else {
        print("Ha fallado el método CGImageSourceCreateWithURL ")
    }
}

imageAspectRatio(url: imageURL)
// imageAspectRatio(url: "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png")


