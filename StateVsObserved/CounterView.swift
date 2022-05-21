import SwiftUI

protocol CounterViewActions {
    func incrementCounter()
}

struct CounterView: View {
    var count: Int = 0
    var actions: CounterViewActions?

    var body: some View {
        VStack {
            Text("Count is: \(count)")
            Button("Increment Counter") {
                actions?.incrementCounter()
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(count: 0, actions: nil)
    }
}

