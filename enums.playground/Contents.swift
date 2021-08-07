import UIKit

//Enumeradores (ENUM)
// tipo comum de um conjunto fechado de valores
//Quando eu vou precisar usar um enumerador?
//Sempre que tiver um cenario que aquela variavel
//tiver um conjunto fechado de possibilidades
enum Compass {
    case north
    case east
    case west
    case south
}
    
// Criando uma variavel do tipo Compass
var direction = Compass.north

//Como Swift trabalha com inferencia de tipo, podemos usar
//somente .valor, caso o tipo seja definido explicitamente
var direction2: Compass = .south
print("Minha direção é \(direction2)")

//Enum sao muito usados com switch para analise do valor
switch direction {
case .north:
    print("Estamos indo para o norte")
case .south:
    print("Estamos indo o sul")
case .east:
    print("Estamos indo para o leste")
case .west:
    print("Estamos indo para o oeste")
}

//Enumeradores com valores padrões
enum SeatPosition: String {
    case aisle = "corredor"
    case middle = "meio"
    case window = "janela"
}
var passengerSeat = SeatPosition.window
print(passengerSeat.rawValue)

//Enum de Int com valores padrões
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
}
var currentMonth: Month = .august
print("Estamos no mês \(currentMonth.rawValue) do ano")

//Valores associados
//Aqui sera util para colocar medidas
enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}
let ageMeasure: Measure = .age(33)
let weightMeasure: Measure = .weight(82)
let sizeMeasure: Measure = .size(width: 0.6, height: 1.71)
switch sizeMeasure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("Sua idade é \(age)")
case .size(let size):
    print("As medidas são \(size.width)m de largura e \(size.height)m de altura")
}
