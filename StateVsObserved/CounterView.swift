import SwiftUI

final class CounterViewModel: ObservableObject {
    @Published var count = 0

    func incrementCounter() {
        count += 1
    }
}


// make use of the observable object publisher and send a change signal manually
//final class CounterViewModel: ObservableObject {
//    private(set) var count = 0
//
//    func incrementCounter() {
//        count += 1
//        objectWillChange.send()
//    }
//}

struct CounterView: View {
     @ObservedObject var viewModel = CounterViewModel()
//    @StateObject var viewModel = CounterViewModel()

    var body: some View {
        VStack {
            Text("Count is: \(viewModel.count)")
            Button("Increment Counter") {
                viewModel.incrementCounter()
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}

