//
//  modelViewTest.swift
//  desarrolloVision
//
//  Created by Eugenio Pedraza on 28/02/24.
//

import SwiftUI
import SceneKit

// Struct for SceneKit view
struct SceneKitModelView: UIViewRepresentable {
    typealias UIViewType = SCNView
    let modelName: String

    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView()
        scnView.scene = SCNScene(named: modelName)
        scnView.autoenablesDefaultLighting = true
        scnView.backgroundColor = UIColor.clear
        return scnView
    }

    func updateUIView(_ uiView: SCNView, context: Context) {}
}
