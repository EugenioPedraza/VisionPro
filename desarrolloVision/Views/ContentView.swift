//
//  ContentView.swift
//  desarrolloVision
//
//  Created by Eugenio Pedraza on 26/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                 MenuView()
            }
        }
    }
}

#Preview {
    ContentView()
}
