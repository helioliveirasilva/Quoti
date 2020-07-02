//
//  Lugares.swift
//  Quoti
//
//  Created by Hélio Silva on 01/07/20.
//  Copyright © 2020 Apple Academy. All rights reserved.
//

import Foundation
import UIKit


struct Lugares {
    
    let imagem: UIImage
    let nome: String
    let distancia: String
    let visitado: String
    let favorito: Bool
    
}

var lugar1:Lugares = Lugares(
    imagem: UIImage(named: "lugar1")!,
    nome: "Pastel de Michelle",
    distancia: "a 120 metros ",
    visitado: "visitado em 20 de abril de 2020",
    favorito: true
)

var lugar2:Lugares = Lugares(
    imagem: UIImage(named: "lugar2")!,
    nome: "Bar do Zequinha",
    distancia: "a 173 metros ",
    visitado: "visitado em 12 de janeiro de 2020",
    favorito: true
)

var lugar3:Lugares = Lugares(
    imagem: UIImage(named: "lugar3")!,
    nome: "Curva do careca",
    distancia: "a 600 metros",
    visitado: "visitado em 20 de novembro de 2019",
    favorito: true
)

var lugaresArray: [Lugares] = [lugar1,lugar2,lugar3]




// Trilhas



struct Trilhas {
    
    let imagem: UIImage
    let nome: String
    let distancia: String
    let descricao: String

    
}

var trilha1:Trilhas = Trilhas(
    imagem: UIImage(named: "trilha1")!,
    nome: "Moradores Ilustres",
    distancia: "2 Km",
    descricao: "Descubra onde vivem os moradores mais conhecidos do Jordão!"
)

var trilha2:Trilhas = Trilhas(
    imagem: UIImage(named: "trilha2")!,
    nome: "Para os pombinhos",
    distancia: "10 Km",
    descricao: "Explore os locais com mais histórias de romance da região metropolitana do Recife."

)

var trilha3:Trilhas = Trilhas(
    imagem: UIImage(named: "trilha3")!,
    nome: "Pra Relaxar",
    distancia: "3 Km",
    descricao: "Venha se sentir leve nos locais onde aconteceram histórias quem trazem paz"

)

var trilhasArray: [Trilhas] = [trilha1,trilha2,trilha3]
