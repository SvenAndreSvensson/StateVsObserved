import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    @Published var count = 0
    @Published var random = 0
}

extension ViewModel: CounterViewActions {
    func incrementCounter() {
        count += 1
    }
}

extension ViewModel: RandomNumberViewActions {
    func getRandomNumber() {
        random = (0..<1000).randomElement()!
    }
}
