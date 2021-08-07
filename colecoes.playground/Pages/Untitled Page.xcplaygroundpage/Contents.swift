import UIKit

//Coleçoes

//Array
//criando um array de strings e alimentando valores na criaçao
var shoppingList: [String] = ["Leite", "Pão", "Manteiga", "Açucar"]

//Usando inferencia
var inferredShoppingList = ["Leite", "Pão", "Manteiga", "Açucar"]

//Testando se umn Array esta vazio
if shoppingList.isEmpty {
    print("A lista de compras esta vazia")
} else {
    print("A lista de compras NÃO esta vazia")
}

//Recuperando o total de elementos do Array
print("Nossa lista de compras possui \(shoppingList.count) itens")

//Criando um Array de String vazio
var emptyArray: [String] = []

//Removendo o elemento na posiçao 3 e atribuindo a uma variavel
let coffe = shoppingList.remove(at: 3)

//Removendo o primeiro e o ultimo elemento
let cacau = shoppingList.removeFirst()
let apple = shoppingList.removeLast()

//Verificando se a lista contem um elementos
print(shoppingList.contains("Café"))

//Pesquisando o indice de um elemento
if let coffeIndex = shoppingList.firstIndex(of: "Açucar") {
    print("O índice do Açucar no Array é \(coffeIndex)")
}

//Dictionary
var states: [String: String] = ["PA": "PARA", "SP": "SAO PAULO", "BA": "BAHIA", "RJ": "RIO DE JANEIRO"]
// O valor é São Pualo ea chave a qual ele esta vinculada é SP
// Como recupero São Paulo? Baseado na chave SP!!!

//Dictionary Empty (vazio)
var emptyStates: [String: String] = [:]

//Verificando se o dicionario esta vazio
if states.isEmpty {
    print("O dicionario esta vazio")
}

//Recuperando o valor atribuido a uma chave
let rj = states["RJ"]
print(rj)
if let rj = states["RJ"] {
    print(rj)
}

//Inserindo elementos
states["MS"] = "Mato Grosso do Sul"

//Verificando se um elemento esta presente no dicionario
if states["MS"] != nil {
    print("Existe Mato Grosso do Sul no dicionario")
}

//2 Formas de remover elementos
states["RJ"] = nil
states.removeValue(forKey: "BA")

//Set
//Criando um Set de String
var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Avatar",
    "Harry Potter",
    "Star Wars",
]

//Criando um set vazio
var movie2 = Set<String>()

//Inserindo elementos
movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count)

// Para remover
movies.remove("Homem-Aranha: De Volta para o Lar")
print(movies)

//Percorrendo um Set = imprimir todos os valores do meu Set e atribuir tudo para o movie
for movie in movies {
    print(movie)
}

//Verificamos se determinado elemento esta contido no Set
if movies.contains("Matrix") {
    print("Matrix esta na minha lista de livros favoritos!")
}

//Vamos criar um novo Set para realizar algumas operaçoes
var myHusbandMovies: Set<String> = [
    "Tropa de Elite",
    "Efeito Borboleta",
    "Senhor das Armas",
    "Forest Gump",
    "O mochileiro da Galaxia",
    "Matrix",
]

//Aqui foi criado a interseçao entre meus filmes e os filmes do meu esposo
//Criado Set a partir de outro
//Esse Set só atribuira filmes que temos em comum, que no caso é o MATRIX.
let favoriteMovies = movies.intersection(myHusbandMovies)
print(favoriteMovies)

//Criando um Set com todos os filmes
let allMovies = movies.union(myHusbandMovies)
print(allMovies)

//Removendoo um Set de outro
movies = movies.subtracting(myHusbandMovies)
print(movies)
