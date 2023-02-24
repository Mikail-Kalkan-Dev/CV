//
//  Competence.swift
//  CV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI


struct Competence: Identifiable {
    
    let id : UUID
    
    var title: String
    var lvl: Int
    var lvlMax: Int
    var dureePresence: Int
    var dureeTotal : Int
    var img: String
    var theme: Theme
    var exos: [Exo]
    
    init(id:UUID = UUID(), title: String, lvl:Int, lvlMax:Int, dureePresence: Int, dureeTotal: Int, img:String, theme:Theme,exos: [String]){
        self.id = id
        self.title = title
        self.lvl = lvl
        self.lvlMax = lvlMax
        self.img = img
        self.theme = theme
        self.exos = exos.map{ Exo(name: $0)}
        self.dureePresence = dureePresence
        self.dureeTotal = dureeTotal
    }
}

extension Competence {
    struct Exo: Identifiable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(),name: String){
            self.id = id
            self.name = name
        }
    }
}

extension Competence {
    static let sampleData: [Competence] = [
        Competence(title: "Laravel", lvl: 10, lvlMax: 100,dureePresence: 35 , dureeTotal: 50, img: "laravel" , theme: .yellow,exos: ["Portfolio","CV Dynamique","Site E Commerce Vente Manga"]),
        Competence(title: "Symphony", lvl: 20, lvlMax: 100,dureePresence: 10 , dureeTotal: 10,img: "symfony" ,theme: .orange,exos: ["Je suis venu","J'ai vu","J'ai vaincu"]),
        Competence(title: "JavaScript",lvl: 70, lvlMax: 100,dureePresence: 50 , dureeTotal: 50, img: "js" ,theme: .poppy,exos: ["Un","Dos","Tres"])
    ]
}
