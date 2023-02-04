import Foundation

/*
 * Reto #9
 * CÓDIGO MORSE
 * Fecha publicación enunciado: 02/03/22
 * Fecha publicación resolución: 07/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

// Crear un diccionario con las letras (mayúsculas y minúsculas), números y otros signos como clave, y los códigos Morse como valor

// Vincular las palabras (o letras) y signos al diccionario

// Crear la función que te devuelva un string


let naturalDict = ["A":".—", "N":"—.", "0":"—————",
                   "B":"—...", "Ñ":"——.——", "1":".————",
                   "C":"—.—.", "O":"———", "2":"..———",
                   "CH":"————", "P":".——.", "3":"...——",
                   "D":"—..", "Q":"——.—", "4":"....—",
                   "E":".", "R":".—.", "5":".....",
                   "F":"..—.", "S":"...", "6":"—....",
                   "G":"——.", "T":"—", "7":"——...",
                   "H":"....", "U":"..—", "8":"———..",
                   "I":"..", "V":"...—", "9":"————.",
                   "J":".———", "W":".——", ".":".—.—.—",
                   "K":"—.—", "X":"—..—", ",":"——..——",
                   "L":".—..", "Y":"—.——", "?":"..——..",
                   "M":"——", "Z":"——..", "\"":".—..—.", "/":"—..—."]

var morseDict: [String:String] = { // Aquí estamos creando una variable computada que se forma así misma con el contenido que hay dentro de las llaves. En este caso lo que queremos es invertir el diccionario naturalDict.
    var morseDict: [String:String] = [:] // Estamos creando el diccionario que queremos devolver y lo vamos rellenando
    naturalDict.forEach { key, value in // Recorremos el naturalDict con forEach. Al usar un for each en un diccionario nos devuelve siempre la key y la value de cada elemento. También se podría escribir así: for key, value in natrualDict {}
        morseDict[value] = key // Al nuevo diccionario que vamos a devolver le vamos a poner como key el valor del naturalDict, y como valor el key del naturalDict (porque lo estamos invirtiendo)
    }
    return morseDict // Devolvemos el diccionario nuevo calculado
}()

func translate(text:String) -> String {
    
    if let firstCharacter = text.first, firstCharacter == "-" || firstCharacter == "." { // Estamos obteniendo el primer caracter y lo desempaquetamos con un if let porque la propiedad first devuelve un opcional. También estamos comprobando que lo que nos llega es morse para poder pasarlo después a palabra normal.
      return ""
    } else { // Aquí vamos a hacer el caso contrario, que es cambiar una palabra normal a morse.
       return translateNaturalToMorse(naturalText: text)
    }
}

func translateNaturalToMorse (naturalText: String) -> String {
    var morseText = "" // HAcemos una variable vacía para que se vaya actualizando
    print("Nos ha llegado una palabra normal y tenemos que pasarla a Morse")
    for naturalCharacter in naturalText.uppercased() { // Recorremos "naturalText" que es el parámetro que tenemos en la función y obtenemos cada uno de los carácteres de naturalText y se lo damos a la variable "naturalCharacter"
        print("Vamos a traducir el caracter : \(naturalCharacter)")
        if naturalCharacter == " " { // Comprobamos que la variable naturalCharacter sea un espacio (porque al traducir a morse necesitamos dos espacios)
            print("Es un espacio, así que lo traducimos a Morse")
            morseText += "  " // morseText = morseText + "  " -> Estamos añadiendo el espacio de morse a lo que ya había previamente del morseText
        } else { // En caso de que no sea un espacio y sea otra cosa...
            print("Tenemos un caracter normal y vamos a pasarlo a Morse a través del diccionario")
            let morseCharacter = naturalDict[String(naturalCharacter)] ?? "" // Estamos creando una constante al que le vamos a dar el valor del diccionario. Tenemos que hacer un typecast string porque la variable character es de tipo Character. Además, al acceder a un diccionario nos devuelve opcional ya que la clave no podría existir, por lo que usamos el nil coalescing para indicarle que si es nulo le ponemos por defecto un string vacío.
            print("La traducción del caracter \(naturalCharacter) es \(morseCharacter)")
            morseText += morseCharacter // Añadimos a lo que ya había en translatedText el nuevo carácter en morse
            morseText += " " // Después de cada letra añadimos un espacio porque morse funciona así.
            
            print("Esto es lo que llevamos de traducción \(morseText)")
        }
    }
    return morseText
}

// Hay que crear una función que haga la traducción del morse a natural

// Necesitamos saber agrupar los signos para formar una letra

// Hay que tener en cuenta el doble espacio del morse para el espacio natural entre palabras, y el espacio único entre letras

func translateMorseToNatural (morseText: String) -> String { // Función para traducir de Morse a natural
    var naturalText: String = "" // Creamos una variable vacía para que se vaya actualizando
    let morseTextWordsArray: [String] = morseText.components(separatedBy: "  ") // Creamos una constante donde almacenamos las palabras morse separadas con la función .components y en formato array de strings
    for morseWord in morseTextWordsArray { // Recorremos el array de las palabras morse para obtener cada palabra
        let morseLetterArray: [String] = morseWord.components(separatedBy: " ")
        for morseLetter in morseLetterArray { // Recorremos las letras morse de cada palabra
            let naturalLetter = morseDict[morseLetter] ?? "" // Traducimos las letras morse a letra natural
            naturalText += naturalLetter // Sumamos cada letra
        } // Hemos acabado de recorrer las letras de una palabra
        naturalText += " "
    } // HEmos terminado de recorrer las palabras
    
  
    
    return naturalText
}

print(translate(text: "Hola"))
print(translate(text: "Estoy hasta los huevos"))

print(translateMorseToNatural(morseText: ". ... — ——— —.——   .... .— ... — .—   .—.. ——— ...   .... ..— . ...— ——— ..."))
