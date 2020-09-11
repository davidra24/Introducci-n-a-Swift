import UIKit

//ENTEROS
let age: UInt8 = 25

//UInt -> U - uinsigned
//Tamaños de enteros en memoria
let minValue8 = UInt8.min
let maxValue8 = UInt8.max

let minValue16 = UInt16.min
let maxValue16 = UInt16.max

let minValue32 = UInt32.min
let maxValue32 = UInt32.max

let minValue64 = UInt64.min
let maxValue64 = UInt64.max

let minValue = Int.min
let maxValue = Int.max

//FLOAT - DOUBLE
let πf: Float = 3.14159265
let πd: Double = 3.14159265

let meaningOfLife = 42 //Int
let π = 3.14159 //Double
let anotherπ = 3 + 0.14159 //Double

let decimalInteger = 17 //1*10+7

//17 en binario
let binaryInteger = 0b10001

//17 en Octal
let octalInteger = 0o21

//17 en hexadecimal
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e2
let hexaDoubleExponent = 0xC.3p90

let paddedDouble = 000123.456
let someNumber = 00000097.450

let oneMillion = 1_000_000
let justMoreThanOneMillion = 1_000_000.000_000_1

//Error tipo de dato -> let cannotBeNegative: UInt8 = -1
//Error tipo de dato -> let cannotBeMoreThanMax: UInt8 = UInt8.max + 1

//Casteo de datos
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1

//No se puede sumar UInt8 y UInt16
//let twoThousandAndOne = twoThousand + one
 
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNumber = Double(three) + decimalNumber

//typealias
typealias AudioSample = UInt16
//typealias AudioSample = UInt32

var maxAplitude = AudioSample.max //UInt16.max

//Boolean
let orangesAreOrange = true
let foodIsDelicious = false

var isAged: Bool

isAged = true

if isAged {
    print("Es mayor de edad")
} else {
    print("No es mayor de edad")
}

//Tipo de dato TUPLA
let http404Error = (404, "Error 404. página no encontrada")
let (statusCode, statusMessage) = http404Error

print("El codigo del error es \(http404Error.0)")
print("El mensaje del error es \(statusMessage)")

let (justStatusCode, _) = http404Error

let http200Status = (statusCode: 200, description: "OK")
print("El codigo del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

//Opcionales y Nil
let posibleAge = "31"
let convertedAge = Int(posibleAge) //Entero opcional Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil
