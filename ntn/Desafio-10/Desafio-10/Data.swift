//
//  Data.swift
//  Desafio-10
//
//  Created by Turma01-3 on 03/11/25.
//

import Foundation

struct Hamburguer: Hashable {
    var nome: String
    var ingredientes: [String]
    var preco: Double
}

let cardapio: [Hamburguer] = [
    Hamburguer(nome: "Clássico", ingredientes: ["Pão", "Carne", "Queijo", "Alface", "Tomate"], preco: 19.90),
    Hamburguer(nome: "Bacon Lover", ingredientes: ["Pão", "Carne", "Queijo", "Bacon", "Maionese"], preco: 22.50),
    Hamburguer(nome: "Frango Crispy", ingredientes: ["Pão", "Frango empanado", "Alface", "Molho especial"], preco: 20.00),
    Hamburguer(nome: "Vegano", ingredientes: ["Pão integral", "Grão-de-bico", "Alface", "Tomate", "Molho vegano"], preco: 18.00),
    Hamburguer(nome: "Duplo Cheddar", ingredientes: ["Pão", "Duas carnes", "Cheddar", "Cebola caramelizada"], preco: 25.00)
]
