//
//  CompetenceView.swift
//  CV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct CompetenceView: View {
    let competences: [Competence]
    
    var body: some View {
        VStack{

            ForEach(competences){ competence in
                
                NavigationLink(destination : DetailView(competence: competence)){
                    CardView(competence: competence)
                        .padding(0)
                    
                }
                .listRowBackground(competence.theme.mainColor)
                .padding(0)
                    
         
            }
            Spacer()
        }
        .navigationTitle("Competences")
        .background(.white)

        
        
    }
}

struct CompetenceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CompetenceView(competences: Competence.sampleData)
        }
    }

}
