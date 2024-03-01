//
//  systemsMenu3D.swift
//  desarrolloVision
//
//  Created by Eugenio Pedraza on 28/02/24.
//

import SwiftUI

struct systemsMenu3D: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var bodySystems: BodySystem
    @State private var selectedAnatomy: BodySystem?
    
    var body: some View {
        
        Text("Body Systems")
            .font(.system(size: 50))
            .fontWeight(.bold)
            .padding()
        Divider()
            HStack (alignment: .top){
                VStack(alignment: .leading){
                    Text(bodySystems.name)
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        .padding(15)
                    Divider()
                    Text(bodySystems.description)
                        .padding(25)
                }
                ScrollView{
                    VStack {
                        LazyVGrid(columns: columns){
                            ForEach(arrBodySystems) {bodySystem in
                                BodyRow(bodySystem: bodySystem)
                            }
                        }
                    }
                }
        }
    }
}
    

#Preview {
        systemsMenu3D(bodySystems: arrBodySystems[1])
}
