import UIKit

// Optionals simbolo ?
//Essa variavel nesse momento nao tem valor
// Porem mais para frente ela podera ter um valor
var driverLicense: String?
print(driverLicense)
//Resultado: nil= nulo (objeto que nao tem valor atribuido a ele)

//Para atribuir o valor para essa variavel
driverLicense = "6789877"
print(driverLicense)
//Resultado: Optional("6789877")

//Desembrulhando Optionals da maneira nao-segura (tecnica para tirar o valor)
print(driverLicense!)

//Optional Binding (Forma correta de ser fazer um Optionals)
if let license = driverLicense {
    print(" A carteira de motorista é \(license)")
} else {
    print("Esta pessoa nao possui carteira de motorista")
}

//Implicitly Unwrapped Optional (PERIGOSO)
var alias: String!
print("Meu apelido é \(alias)")

alias = "Pelé"
print("Meu apelido é \(alias.uppercased())")

//Nil Coalescing Operator (Operador de Coalescencia Nula) simbolo ??
var age: Int?
let age2 = age ?? 0
print(age2) //0

age = 27
let age3 = age ?? 0
print(age3) //27

//Optional Chaining = cadeia de optional (MANEIRA DE TRABALHAR COM O OPTIONAL DE UMA FORMA SEGURA)
// Para imprimir tudo em letra maiuscula usar o UPPERCASED()
var weekDay: String?
print(weekDay?.uppercased())
weekDay = "Segunda"
print(weekDay?.uppercased())

