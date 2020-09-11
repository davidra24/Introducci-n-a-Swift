import UIKit

//Fuerza bruta | Optional binding
let possibleAge = "31"
var convertedAge = Int(possibleAge)

if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)")
} else {
    print("La edad del usuario es nula")
}

//convertedAge = nil

print(convertedAge != nil ? convertedAge! : "Valor nulo")

var surveyAnswer: String?
surveyAnswer = "42"

//Optional Binding
if let actualAnswer = surveyAnswer {
    //Si entra aqui -> surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
} else {
    //Si entra aqui -> surveyAnswer == nil
    print("El string \(surveyAnswer) es nil...")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

//Unwrap implicito

let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let implicityString: String! = "String unwrapped de forma implicita a partir de un optional"

let assumedString: String? = implicityString

if(assumedString != nil){
    print(assumedString!)
}

if let definitiveString = assumedString{
    print(definitiveString)
}

print(assumedString)

func canThrowError() throws {
    //Aqui puede haber un error
}

do {
    try canThrowError()
    //Si llegamos aqui no hay error
} catch {
    //si llegamos aqui hay error
}

func makeASandwich() throws {
    //Error al hacer sandwich
}

func eatSandwich(){}

do {
    try makeASandwich()
    eatSandwich()
} catch {
    //Tengo platos limpios?
    //Tengo ingredientes?
    //Tengo hambre?
}

//Aserciones (debug -> Para buscar errores) y precondiciones (build -> Añade seguridad)

//Aserciones
let age = -5 //Codigo sigue, porque no es posible
//assert(age >= 0, "La edad de una persona no puede ser negativa")
precondition(age >= 0, "La edad de una persona no puede ser negativa")


if age > 10 {
    print("Puedes subir a la montaña rusa")
} else if age >= 0 {
    print("Eres demasiado pequeño para subir a la montaña rusa")
} else {
    assertionFailure("La edad de una persona no puede ser negativa")
    preconditionFailure("La edad de una persona no puede ser negativa")
}

