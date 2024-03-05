//
//  optionView.swift
//  desarrolloVision
//
//  Created by Esteban Aleman on 04/03/24.
//

import SwiftUI

struct OptionView: View {
    var optionText: String
    
    var body: some View {
        HStack {
            Text(optionText)
                .padding()
                .foregroundColor(.black)
                .font(.system(size: 45, weight: .semibold)) // Texto en negrita
        }
        .padding(.vertical, 20)
        .background(Color.gray.opacity(0.1)) // Fondo gris claro
        .cornerRadius(40) // Bordes redondeados
        .padding(.horizontal, 20) // Espacio horizontal
    }
}


#Preview {
    OptionView(optionText: "Ejemplo")
}
