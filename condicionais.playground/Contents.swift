import UIKit

//Estruturas condicionais e de repetiçao
//if - else - esle if

let number = 11
if number % 2 == 0 {
    print("Ele é par")
} else{
    print("Ele é ímpar")
}

var temperature = 18
var climate = ""
if  temperature <= 0 {
    climate = "Muito frio"
}else if temperature < 14 {
    climate = "Frio"
} else if temperature < 21 {
    climate = "Clima Agradavel"
} else if temperature < 32 {
    climate = "Pouco quente"
} else {
    climate = "Muito Quente!"
}

// Opereador Switch melhor que if - else
// Pq?
var number2 = 7
switch number2 % 2 {
case 0:
    print("\(number2) é par")
        default:
    print("\(number2) é par")
}

//Exemplo com vários cenarios no mesmo case
let letter = "a"
switch letter {
case "a", "i", "o", "u":
    print("vogal")
default:
    print("consoante")
}

//para verifivar velocidades
let speed = 33.0
switch speed {
case 0.0..<20.0:
    print("Primeira marcha")
case 20.0..<40.0:
    print("Segunda marcha")
case 40.0..<50.0:
    print("Terceira marcha")
case 50.0..<90.0:
    print("Quarta marcha")
default:
    print("Quinta marcha")
}

//No Switch eu preciso varendo todos os cenarios
//Tenho que ter um default caso eu nao varra todos os cenarios
//OBS não precisa de break

//Laços = como repitir os mesmos codigos varias vezes

//While / repeat while
var life = 10
while life > 0 {
    print("O jogador esta com \(life) vidas")
    life = life - 1
}

//Usando repeat while
var tries = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
} while diceNumber != 6
print("você tirou 6 após \(tries) tentativas")

//arc4random_uniform é uma função que sortea
//Ele gera um numero aleatorio


//For in
//utilizado para percorrer uma coleção
let stundents = [
    "Weslley Rosalem",
    " Partricia Boccuzzi",
    " Andrea Bueno",
    " Isabela Dibi",
    " Flavia Bastos",
    " Ariane Ortiz",
    "Valeria Martins",
]
for student in stundents {
    print("O aluno \(student) veio na aula de hoje!")
}

//Percorrendo uma sequencia (range)
for day in 1...30 {
    print("Estou no dia \(day)")
}

//Percorrendo dicionarios, (key)chave= nome, (value)valor=idade
let people = [
    "Pai": 30,
    "Mãe": 50,
    "Taty": 80,
    "Sogra": 35,
    "Sogro": 23,
]
for person in people {
    print(person.key, person.value)
}

// a variavel PERSON ela é uma tupla
//quando eu percorro um dicionario, cada elemento do dicionario vira uma tupla nomeada

