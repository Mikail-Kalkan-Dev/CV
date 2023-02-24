//
//  CardView.swift
//  CV (iOS)
//
//  Created by stage on 21/02/2023.
//

import SwiftUI

struct CardView: View {
    
    let competence: Competence
    
    var body: some View {
        VStack(alignment: .leading)
        {
            
            
            HStack(alignment: .top){
                Image("\(competence.img)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height:50)
                    .clipShape(Circle())
                

                
                Text(competence.title)
                    .font(.headline)
            }
            
            
            
            HStack(){
                Spacer()
                Label("", systemImage: "chevron.right")
                    .foregroundColor(competence.theme.accentColor)
            }
            Spacer()
            
            HStack(){
                
                Text("Competence")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            
            HStack(){
                Text("\(competence.lvl)")
                    .font(.caption)
                    .foregroundColor(.blue)
                
                Spacer()
                ProgressView(value: Float(competence.lvl), total: Float(competence.lvlMax))
                    .padding(9.0)
                    .frame(height: 20.0)
                Spacer()
                Text("\(competence.lvlMax)")
                    .font(.caption)
                    .foregroundColor(.mint)
            }
        }
        
        .fixedSize()
        .padding()
        .background(competence.theme.mainColor)
        .foregroundColor(competence.theme.accentColor)
        .cornerRadius(10)

    }
}

struct CardView_Previews: PreviewProvider {
    static var competence = Competence.sampleData[1]
    static var previews: some View {
        CardView(competence: competence)
    }
}
