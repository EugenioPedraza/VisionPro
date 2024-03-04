/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct BodyRow: View {
    var bodySystem: BodySystem

    var body: some View {
        ZStack{
            VStack(alignment: .center) {
                SceneKitModelView(modelName: bodySystem.modelName)
                    .frame(width: 150, height: 150)
            }
        }
        .padding()
        .glassBackgroundEffect()
            .foregroundColor(.white)
            .fontWeight(.medium)
            .font(.system(size: 35))
    }
}

struct systemsMenu3D_Previews: PreviewProvider {
    static var previews: some View {
        systemsMenu3D(bodySystems: arrBodySystems[0])
    }
}
