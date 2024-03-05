/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A representation of a single landmark.
*/

import Foundation
import SwiftUI
import CoreLocation
import SceneKit

// Es la estructura en la cual extrae los datos del JSON y los almacena en sus dependiendtes variables
struct QuizData: Hashable, Codable, Identifiable {
    var Pregunta: String
    var id: Int
    var Opcion1: String
    var Opcion2: String
    var Opcion3: String
    var Opcion4: String
}
