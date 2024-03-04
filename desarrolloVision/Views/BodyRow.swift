/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct BodyRow: View {
    var bodySystem: BodySystem
    @State private var rotationAngle: CGFloat = 0

    var body: some View {
            VStack(alignment: .center) {
                SceneKitModelView(modelName: bodySystem.modelName, rotationAngle: rotationAngle)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        withAnimation(Animation.linear(duration: 2)) {
                            rotationAngle += .pi * 2 // Rotate 360 degrees
                        }
                    }
                
                Text(bodySystem.name)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
            }
            .padding()
            .background(Color.clear)
        .glassBackgroundEffect() // Assuming this is a custom modifier
    }
}

