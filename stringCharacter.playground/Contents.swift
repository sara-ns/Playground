import UIKit

//Tipo String Character

var module : String = "Introduçao ao Swift"
var schoolName = "Fiap"

//Notar que a letter, na linha abaixo é uma String
//Devido á inferencia de tipo
var letter = "A"

//Para usar Character, precisa definir explicitamente
var gender : Character = "M"

// Para quebrar a linha usar \n (BARRA N)
var text = "Este texto \"quebra\" em \nduas linhas"
print(text)

// o \t gera uma tabulaçao ("é um espaço pré-definido")
var text2 = "Nota:\t 10"
print(text2)

//Interpolaçao de Strings
//Oq é isso? Voce pode criar uma String colocando dentro dela varias variaveis, interpolando as variaveis.
// Como faz isso? com \(E O NOME DA VARIAVEL DENTRO)
// Com isso essa String passa ter o conteudo da variavel
let studentGrade = 8.5
let studentName = "Sara"
let result = "Aprovada"

let message = "A aluna \(studentName) tirou \(studentGrade) e foi \(result)"
print(message)

//Bool (Booleanos)
var  isApproved = true
var firstTime : Bool = false

//Tuple (Tuplas)
//Ela é um tipo composto de outros tipos
let address = "Rua Grauna, 419, 0058-500"

//criei uma variavel chamada newAddress e nesse caso defini que o tipo dela é uma tupla,
//que siginifca abrindo e fechando parenteses e colocando quais os subtipos ela tem.
let newAddress : (String, Int, String) = ("Residencial Tambore", 2523, "17058-515")
print("O nome da rua é \(newAddress.0)")
print("O numero da rua é \(newAddress.1)")
print("O CEP é \(newAddress.2)")

//Tuplas Nomeadas
//Ao inves de chamar pela posiçao eu irei chamar pelo o nome
let address2: (street: String, number: Int, zipCode: String ) = ("Residencial Tambore", 2523, "17058-515")
print("O nome da rua é \(address2.street)")
print("O numero é \(address2.number)")
print("O CEP é \(address2.zipCode)")

//Decomposiçao de tuplas
//AQUI: meu address2 vai ser decomposto em duas variaveis
let (streetName, streetNumber, _) = address2
