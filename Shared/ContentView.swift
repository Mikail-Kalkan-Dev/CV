//
//  ContentView.swift
//  Shared
//
//  Created by stage on 20/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    let competences: [Competence] = Competence.sampleData
    
    var body: some View {
        GeometryReader{ reader in
            
            
            VStack(alignment: .center){
                
                HStack() {
                    Image("Chien")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height:70)
                        .clipShape(Circle())
                    
                    
                    VStack(alignment: .leading){
                        Text("Kalkan")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Mikail")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
                
                Spacer()
                
                HStack(alignment: .top){
                    
                    
                    VStack(alignment: .center){
                        Text("Competence")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        CompetenceView(competences: competences)
                            .padding(0)
                            
                        
                    }
                    .padding(0)
                    
                    
                    Spacer()
                    
                    
                    VStack(alignment: .center){
                        Text("Experience")
                            .font(.title3)
                            .fontWeight(.semibold)
                        Text("Exos")
                        Text("Exos")
                    }
                    .padding(0)
                    
                    
                    
                }
                .padding(10)
                
                
                HStack(alignment: .top){
                    VStack(alignment: .trailing){
                        Text("Content")
                    }
                    Spacer().frame(width:50)
                    VStack(alignment: .leading){
                        Text("Mail")
                        Text("tel 06")
                        Text("tr3")
                        
                    }
                }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
