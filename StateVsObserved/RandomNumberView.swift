import SwiftUI

struct RandomNumberView: View {
    @State var randomNumber = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Random number is: \(randomNumber)")
                Button("Randomize number") {
                    randomNumber = (0..<1000).randomElement()!
                }
            }.padding(.bottom)
            
            CounterView()
        }
    }
}
