//
//  DetailView.swift
//  CV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct DetailView: View {
    let competence: Competence
    var body: some View {
        List{
            Section(header:Text("Info Competence")){
                HStack(){
                    Text("Durée total des cours")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    
                    Spacer()
                    
                    Label("45h", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                    
                
                HStack(){
                    Label("Durée", systemImage: "clock")
                    Spacer()
                    Text("\(competence.lvl) h")
                }
            }
            Section(header:Text("Listes des exos")){
                ForEach(competence.exos){exo in
                    Label("\(exo.name)", systemImage: "")
                }
            }
            
        }
        .navigationTitle(competence.title)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var competence = Competence.sampleData[0]
    static var previews: some View {
        DetailView(competence: competence)
    }
}
